from flask import current_app
from .. import db
from .tournament_models import Tournaments

class TeamsNames(db.Model):
  __tablename__ = 'teams_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  pes_name = db.Column(db.String(64))
  real_name = db.Column(db.String(64))

  teams_names_id = db.relationship('Teams', backref='teamsNames', lazy=True)
class TeamsTypes(db.Model):
  __tablename__ = 'teams_types'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  type = db.Column(db.String(64))
  teams_types_id = db.relationship('Teams', backref='teamsTypes', lazy=True)

class TeamsLevels(db.Model):
  __tablename__ = 'teams_levels'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  level = db.Column(db.Float, unique=True)
  teams_levels_id = db.relationship('Teams', backref='teamsLevels', lazy=True)

class Teams(db.Model):
  __tablename__ = 'teams'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  teams_names_id = db.Column(db.Integer, db.ForeignKey('teams_names.id'), nullable=False)
  teams_types_id = db.Column(db.Integer, db.ForeignKey('teams_types.id'), nullable=False)
  teams_levels_id = db.Column(db.Integer, db.ForeignKey('teams_levels.id'), nullable=False)
  teams_id = db.relationship('Tournaments', backref='teams', lazy=True)
