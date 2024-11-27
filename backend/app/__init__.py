
from flask import Flask
from .user import User
from .config import Config
from .database import db

def init_app():
    app = Flask(__name__)
    app.config.from_object(config)

    with app.app_context:
        db.init_app(app)
        db.create_all()

    return app

app=init_app()

if __name__== "__main__":
   app.run()
