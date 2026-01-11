from uuid import uuid4
from sqlalchemy import String
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column



class BaseModel(DeclarativeBase):
    id: Mapped[str] = mapped_column(String(36), default=lambda: str(uuid4()), nullable=False)