from flask import current_app
from .. import db
from .competitions_models import Competitions

class TeamsNames(db.Model):
  __tablename__ = 'teams_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  real_name = db.Column(db.String(64))
  fifa_name = db.Column(db.String(64))
  pes_name = db.Column(db.String(64))
  teams_names_id = db.relationship('Competitions', backref='teamsNames', lazy=True)
class TeamsTypes(db.Model):
  __tablename__ = 'teams_types'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  type = db.Column(db.String(64))
  teams_types_id = db.relationship('Competitions', backref='teamsTypes', lazy=True)

class TeamsLevels(db.Model):
  __tablename__ = 'teams_levels'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  level = db.Column(db.Float, unique=True)
  teams_levels_id = db.relationship('Competitions', backref='teamsLevels', lazy=True)

