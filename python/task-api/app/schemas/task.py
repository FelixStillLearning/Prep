from pydantic import BaseModel
from typing import Optional

class TaskCreate(BaseModel):
    title: str

class TaskOut(BaseModel):
    id :int
    title: str
    done: bool
    owner_id: int

    class Config:
        from_attributes = True

class TaskUpdate(BaseModel):
    title: Optional[str] = None
    done: Optional[bool] = None

