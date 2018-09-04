from flask import current_app
from .. import db
from .tournament_models import Tournaments

class VideosGamesNames(db.Model):
  __tablename__ = 'videos_games_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  videos_games_names_id = db.relationship('Tournaments', backref='videosGamesNames', lazy=True)

class SeasonsNames(db.Model):
  __tablename__ = 'seasons_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  seasons_names_id = db.relationship('Tournaments', backref='seasonsNames', lazy=True)

class ZonesNames(db.Model):
  __tablename__ = 'zones_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  zones_names_id = db.relationship('Tournaments', backref='zonesNames', lazy=True)

class CountriesNames(db.Model):
  __tablename__ = 'countries_names'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  countries_names_id = db.relationship('Tournaments', backref='countriesNames', lazy=True)
