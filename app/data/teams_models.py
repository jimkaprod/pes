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
  competitions_teams_names_id = db.Column(db.Integer, db.ForeignKey('competitions.teams_names_id'), nullable=False)

class TeamsTypes(db.Model):
  __tablename__ = 'teams_types'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  type = db.Column(db.String(64))
  competitions_teams_types_id = db.Column(db.Integer, db.ForeignKey('competitions.teams_types_id'), nullable=False)

class TeamsLevels(db.Model):
  __tablename__ = 'teams_levels'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  level = db.Column(db.Float, unique=True)
  competitions_teams_levels_id = db.Column(db.Integer, db.ForeignKey('competitions.teams_levels_id'), nullable=False)

