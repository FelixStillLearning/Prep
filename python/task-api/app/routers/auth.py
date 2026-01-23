from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.db.deps import get_db
from app.models.user import User
from app.schemas.auth import UserCreate, TokenOut
from app.core.security import hash_password, verify_password, create_access_token

router = APIRouter(prefix="/auth", tags=["auth"])

@router.post("/register")
def register(payload: UserCreate, db: Session = Depends(get_db)):

    # cek username sudah dipakai atau belum
    existing = db.query(User).filter(User.username == payload.username).first()
    if existing:
        raise HTTPException(status_code=400, detail="Username already exists")

    user = User(
        username=payload.username,
        hashed_password=hash_password(payload.password)
    )
    db.add(user)
    db.commit()
    db.refresh(user)

    return {"id": user.id, "username": user.username}

@router.post("/login", response_model=TokenOut)
def login(payload: UserCreate, db: Session = Depends(get_db)):
    user = db.query(User).filter(User.username == payload.username).first()
    if not user:
        raise HTTPException(status_code=401, detail="Invalid credentials")

    if not verify_password(payload.password, user.hashed_password):
        raise HTTPException(status_code=401, detail="Invalid credentials")

    token = create_access_token({"sub": str(user.id)})

    return {"access_token": token, "token_type": "bearer"}
