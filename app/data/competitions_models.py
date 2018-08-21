from flask import current_app
from .. import db



# competitions = db.Table('competitions',
#     db.Column('id', db.Integer, primary_key=True, autoincrement=True),
#     db.Column('videos_games_names_id', db.Integer, db.ForeignKey('videos_games_names.id')),
#     db.Column('seasons_names_id', db.Integer, db.ForeignKey('seasons_names.id')),
#     db.Column('zones_names_id', db.Integer, db.ForeignKey('zones_names.id')),
#     db.Column('countries_names_id', db.Integer, db.ForeignKey('countries_names.id')),
#     db.Column('competitions_types_id', db.Integer, db.ForeignKey('competitions_types.id')),
#     db.Column('competitions_categories_id', db.Integer, db.ForeignKey('competitions_categories.id')),
#     db.Column('competitions_names_id', db.Integer, db.ForeignKey('competitions_names.id')),
#     db.Column('teams_names_id', db.Integer, db.ForeignKey('teams_names.id')),
#     db.Column('teams_types_id', db.Integer, db.ForeignKey('teams_types.id')),
#     db.Column('teams_levels_id', db.Integer, db.ForeignKey('teams_levels.id')),
# )

class Competitions(db.Model):
  __tablename__ = 'competitions'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True, autoincrement=True)
  videos_games_names_id = db.Column(db.Integer, db.ForeignKey('videos_games_names.id'))
  seasons_names_id = db.Column(db.Integer, db.ForeignKey('seasons_names.id'))
  zones_names_id = db.Column(db.Integer, db.ForeignKey('zones_names.id'))
  countries_names_id = db.Column(db.Integer, db.ForeignKey('countries_names.id'))
  competitions_types_id = db.Column(db.Integer, db.ForeignKey('competitions_types.id'))
  competitions_categories_id = db.Column(db.Integer, db.ForeignKey('competitions_categories.id'))
  competitions_names_id = db.Column(db.Integer, db.ForeignKey('competitions_names.id'))
  teams_names_id = db.Column(db.Integer, db.ForeignKey('teams_names.id'))
  teams_types_id = db.Column(db.Integer, db.ForeignKey('teams_types.id'))
  teams_levels_id = db.Column(db.Integer, db.ForeignKey('teams_levels.id'))


class VideosGamesNames(db.Model):
  __tablename__ = 'videos_games_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))

class SeasonsNames(db.Model):
  __tablename__ = 'seasons_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))

class ZonesNames(db.Model):
  __tablename__ = 'zones_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  # team = db.relationship('Teams', backref='teamZones', lazy=True)
  # competition = db.relationship('Competitions', backref='competitionZones', lazy=True)
  # country = db.relationship('Countries', backref='countryZones', lazy=True)

class CountriesNames(db.Model):
  __tablename__ = 'countries_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  # zones_id = db.Column(db.Integer, db.ForeignKey('zones.id'))
  # team = db.relationship('Teams', backref='teamCountries', lazy=True)
  # competition = db.relationship('Competitions', backref='competitionCountries', lazy=True)

class CompetitionsTypes(db.Model):
  __tablename__ = 'competitions_types'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  # competition = db.relationship('Competitions', backref='competitionCompetitionsTypes', lazy=True)

class CompetitionsCategories(db.Model):
  __tablename__ = 'competitions_categories'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  # competition = db.relationship('Competitions', backref='competitionCompetitionsCategories', lazy=True)

class CompetitionsNames(db.Model):
  __tablename__ = 'competitions_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  # teams_types_id = db.Column(db.Integer, db.ForeignKey('teams_types.id'))
  # competitions_types_id = db.Column(db.Integer, db.ForeignKey('competitions_types.id'))
  # competitions_categories_id = db.Column(db.Integer, db.ForeignKey('competitions_categories.id'))
  # countries_id = db.Column(db.Integer, db.ForeignKey('countries.id'))
  # zones_id = db.Column(db.Integer, db.ForeignKey('zones.id'))
