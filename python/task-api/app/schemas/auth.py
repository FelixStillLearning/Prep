from pydantic import BaseModel

class UserCreate(BaseModel):
    username: str 
    password: str  

class TokenOut(BaseModel):
    acces_token: str
    token_type: str = "bearer"

