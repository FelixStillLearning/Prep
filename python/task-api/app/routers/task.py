from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from app.db.deps import get_db
from app.models.task import Task
from app.schemas.task import TaskCreate, TaskOut

router = APIRouter(prefix="/tasks", tags=["tasks"])

@router.post("/", response_model=TaskOut)
def create_task(payload: TaskCreate, db: Session = Depends(get_db)):
    task = Task(title=payload.title, done=False)
    db.add(task)
    db.commit()
    db.refresh(task)
    return task

@router.get("/", response_model=list[TaskOut])
def list_tasks(db: Session = Depends(get_db)):
    return db.query(Task).all()
