from fastapi import FastAPI
from app.db.database import Base, engine
from app.models import task, user
from app.routers.task import router as task_router
from app.routers.auth import router as auth_router
from app.routers.ws import router as ws_router

Base.metadata.create_all(bind=engine)

app = FastAPI(title="Task API")

app.include_router(auth_router)
app.include_router(task_router)
app.include_router(ws_router)


@app.get("/")
def root():
    return {"message": "Task API running"}
