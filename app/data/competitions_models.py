from flask import current_app
from .. import db

class Competitions(db.Model):
  __tablename__ = 'competitions'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True, autoincrement=True)
  videos_games_names_id = db.Column(db.Integer, db.ForeignKey('videos_games_names.id'), nullable=False)
  seasons_names_id = db.Column(db.Integer, db.ForeignKey('seasons_names.id'), nullable=False)
  zones_names_id = db.Column(db.Integer, db.ForeignKey('zones_names.id'), nullable=False)
  countries_names_id = db.Column(db.Integer, db.ForeignKey('countries_names.id'), nullable=False)
  competitions_names_id = db.Column(db.Integer, db.ForeignKey('competitions_names.id'), nullable=False)
  competitions_categories_id = db.Column(db.Integer, db.ForeignKey('competitions_categories.id'), nullable=False)
  competitions_types_id = db.Column(db.Integer, db.ForeignKey('competitions_types.id'), nullable=False)
  teams_names_id = db.Column(db.Integer, db.ForeignKey('teams_names.id'), nullable=False)
  teams_types_id = db.Column(db.Integer, db.ForeignKey('teams_types.id'), nullable=False)
  teams_levels_id = db.Column(db.Integer, db.ForeignKey('teams_levels.id'), nullable=False)


class VideosGamesNames(db.Model):
  __tablename__ = 'videos_games_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  videos_games_names_id = db.relationship('Competitions', backref='videosGamesNames', lazy=True)

class SeasonsNames(db.Model):
  __tablename__ = 'seasons_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  seasons_names_id = db.relationship('Competitions', backref='seasonsNames', lazy=True)

class ZonesNames(db.Model):
  __tablename__ = 'zones_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  zones_names_id = db.relationship('Competitions', backref='zonesNames', lazy=True)

class CountriesNames(db.Model):
  __tablename__ = 'countries_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  countries_names_id = db.relationship('Competitions', backref='countriesNames', lazy=True)

class CompetitionsNames(db.Model):
  __tablename__ = 'competitions_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competitions_names_id = db.relationship('Competitions', backref='competitionsNames', lazy=True)

class CompetitionsCategories(db.Model):
  __tablename__ = 'competitions_categories'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competitions_categories_id = db.relationship('Competitions', backref='competitionsCategories', lazy=True)

class CompetitionsTypes(db.Model):
  __tablename__ = 'competitions_types'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competitions_types_id = db.relationship('Competitions', backref='competitionsTypes', lazy=True)

