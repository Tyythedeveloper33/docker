from .database import db

class User(db.model):
    __tablename__="Users"
    email=db.Column(db.STRING(100), unique=True, nullable=False)
    password= db.Column(db.String(50), nullable=False)
