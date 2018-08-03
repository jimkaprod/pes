from flask import current_app
from .. import db

# seasons_competitions_teams_association = db.Table('competitions_seasons',
#     db.Column('seasons_id', db.Integer, db.ForeignKey('seasons.id'), primary_key=True),
#     db.Column('competitions_id', db.Integer, db.ForeignKey('competitions.id'), primary_key=True),
#     db.Column('teams_id', db.Integer, db.ForeignKey('game_teams.id'), primary_key=True)
# )

class TeamsNames(db.Model):
  __tablename__ = 'teams_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  pes_name = db.Column(db.String(64))
  fifa_name = db.Column(db.String(64))
  real_name = db.Column(db.String(64))
  # teams_types_id = db.Column(db.Integer, db.ForeignKey('teams_types.id'))
  # countries_id = db.Column(db.Integer, db.ForeignKey('countries.id'))
  # zones_id = db.Column(db.Integer, db.ForeignKey('zones.id'))

class TeamsTypes(db.Model):
  __tablename__ = 'teams_types'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  type = db.Column(db.String(64), unique=True)
  # team = db.relationship('Teams', backref='team', lazy=True)
  # competition = db.relationship('Competitions', backref='competitionTeamsTypes', lazy=True)

class TeamsLevels(db.Model):
  __tablename__ = 'teams_levels'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  level = db.Column(db.Float, unique=True)
  # team = db.relationship('Teams', backref='team', lazy=True)
  # competition = db.relationship('Competitions', backref='competitionTeamsTypes', lazy=True)
