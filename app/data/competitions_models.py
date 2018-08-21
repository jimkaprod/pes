from flask import current_app
from .. import db

class Competitions(db.Model):
  __tablename__ = 'competitions'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True, autoincrement=True)
  videos_games_names_id = db.Column(db.Integer)
  seasons_names_id = db.Column(db.Integer)
  zones_names_id = db.Column(db.Integer)
  countries_names_id = db.Column(db.Integer)
  competitions_types_id = db.Column(db.Integer)
  competitions_categories_id = db.Column(db.Integer)
  competitions_names_id = db.Column(db.Integer)
  teams_names_id = db.Column(db.Integer)
  teams_types_id = db.Column(db.Integer)
  teams_levels_id = db.Column(db.Integer)


class VideosGamesNames(db.Model):
  __tablename__ = 'videos_games_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competition_videos_games_names_id = db.Column(db.Integer, db.ForeignKey('competitions.videos_games_names_id'), nullable=False)

class SeasonsNames(db.Model):
  __tablename__ = 'seasons_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competition_seasons_names_id = db.Column(db.Integer, db.ForeignKey('competitions.seasons_names_id'), nullable=False)

class ZonesNames(db.Model):
  __tablename__ = 'zones_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  competition_zones_names_id = db.Column(db.Integer, db.ForeignKey('competitions.zones_names_id'), nullable=False)

class CountriesNames(db.Model):
  __tablename__ = 'countries_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  competition_countries_names_id = db.Column(db.Integer, db.ForeignKey('competitions.countries_names_id'), nullable=False)

class CompetitionsTypes(db.Model):
  __tablename__ = 'competitions_types'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competitions_competitions_types_id = db.Column(db.Integer, db.ForeignKey('competitions.competitions_types_id'), nullable=False)

class CompetitionsCategories(db.Model):
  __tablename__ = 'competitions_categories'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competitions_competitions_categories_id = db.Column(db.Integer, db.ForeignKey('competitions.competitions_categories_id'), nullable=False)

class CompetitionsNames(db.Model):
  __tablename__ = 'competitions_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  competitions_competitions_names_id = db.Column(db.Integer, db.ForeignKey('competitions.competitions_names_id'), nullable=False)
