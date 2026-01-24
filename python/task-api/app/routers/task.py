from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from app.db.deps import get_db
from app.models.task import Task
from app.schemas.task import TaskCreate, TaskOut, TaskUpdate
from app.core.auth import get_current_user
from app.models.user import User

router = APIRouter(prefix="/tasks", tags=["tasks"])

@router.post("/", response_model=TaskOut)
def create_task(
    payload: TaskCreate,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user),
    ):
    task = Task(title=payload.title, done=False, owner_id=current_user.id)
    db.add(task)
    db.commit()
    db.refresh(task)
    return task

@router.get("/", response_model=list[TaskOut])
def list_tasks( 
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user),
):
    return db.query(Task).filter(Task.owner_id == current_user.id).all()

def get_owned_task_or_404(db: Session, task_id: int, user_id: int) -> Task:
    task = db.query(Task).filter(Task.id == task_id).first()
    if not task:
        raise HTTPException(status_code=404, detail= "Task tidak ditemukan")
    if task.owner_id != user_id:
        raise HTTPException(status_code=403, detail= "Dilarang")
    return task


@router.put("/task_id", response_model = TaskOut)
def update_task(
    task_id: int,
    payload: TaskUpdate,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user),
):
    task = get_owned_task_or_404(db, task_id, current_user.id)

    if payload.title is not None:
        task.title = payload.title
    if payload.done is not None:
        task.done = payload.done

    db.commit()
    db.refresh(task)
    return task

@router.patch("/{task_id}/toggle", response_model=TaskOut)
def toggle_task_done( 
    task_id: int,
    db: Session = Depends (get_db),
    current_user = Depends(get_current_user),
):
    task = get_owned_task_or_404(db, task_id, current_user.id)

    task.done = not task.done
    db.commit()
    db.refresh(task)
    return task


@router.delete("/{task_id}")
def delete_task(
    task_id: int,
    db: Session = Depends(get_db),
    current_user: User = Depends(get_current_user),
):
    task = get_owned_task_or_404(db, task_id, current_user.id)

    db.delete(task)
    db.commit()
    return {"message": "Task deleted"}



