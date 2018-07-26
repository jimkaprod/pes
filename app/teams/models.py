from flask import current_app
from .. import db

class Teams(db.Model):
  __tablename__ = 'teams'
  # id = db.Column(db.Integer, primary_key=True)
  # name = db.Column(db.String(64), unique=True)
  # default = db.Column(db.Boolean, default=False, index=True)
  # permissions = db.Column(db.Integer)
  # users = db.relationship('User', backref='role', lazy='dynamic')

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


