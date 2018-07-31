from flask import current_app
from .. import db

seasons_competitions_teams_association = db.Table('competitions_seasons',
    db.Column('seasons_id', db.Integer, db.ForeignKey('seasons.id'), primary_key=True),
    db.Column('competitions_id', db.Integer, db.ForeignKey('competitions.id'), primary_key=True),
    db.Column('teams_id', db.Integer, db.ForeignKey('game_teams.id'), primary_key=True)
)

class Seasons(db.Model):
  __tablename__ = 'seasons'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))

class Teams(db.Model):
  __tablename__ = 'game_teams'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  game_name = db.Column(db.String(64))
  real_name = db.Column(db.String(64))
  abbreviation = db.Column(db.String(64))
  teams_types_id = db.Column(db.Integer, db.ForeignKey('teams_types.id'))
  countries_id = db.Column(db.Integer, db.ForeignKey('countries.id'))
  zones_id = db.Column(db.Integer, db.ForeignKey('zones.id'))

class TeamsTypes(db.Model):
  __tablename__ = 'teams_types'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  type = db.Column(db.String(64), unique=True)
  team = db.relationship('Teams', backref='team', lazy=True)
  competition = db.relationship('Competitions', backref='competitionTeamsTypes', lazy=True)

class Competitions(db.Model):
  __tablename__ = 'competitions'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  game_name = db.Column(db.String(64))
  real_name = db.Column(db.String(64))
  teams_types_id = db.Column(db.Integer, db.ForeignKey('teams_types.id'))
  competitions_types_id = db.Column(db.Integer, db.ForeignKey('competitions_types.id'))
  competitions_categories_id = db.Column(db.Integer, db.ForeignKey('competitions_categories.id'))
  countries_id = db.Column(db.Integer, db.ForeignKey('countries.id'))
  zones_id = db.Column(db.Integer, db.ForeignKey('zones.id'))

class CompetitionsTypes(db.Model):
  __tablename__ = 'competitions_types'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competition = db.relationship('Competitions', backref='competitionCompetitionsTypes', lazy=True)

class CompetitionsCategories(db.Model):
  __tablename__ = 'competitions_categories'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competition = db.relationship('Competitions', backref='competitionCompetitionsCategories', lazy=True)

class Zones(db.Model):
  __tablename__ = 'zones'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  team = db.relationship('Teams', backref='teamZones', lazy=True)
  competition = db.relationship('Competitions', backref='competitionZones', lazy=True)
  country = db.relationship('Countries', backref='countryZones', lazy=True)

class Countries(db.Model):
  __tablename__ = 'countries'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  zones_id = db.Column(db.Integer, db.ForeignKey('zones.id'))
  team = db.relationship('Teams', backref='teamCountries', lazy=True)
  competition = db.relationship('Competitions', backref='competitionCountries', lazy=True)
