from flask import current_app
from .. import db
from .tournament_models import Tournaments

class VideosGames(db.Model):
  __tablename__ = 'videos_games'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))
  videos_games_id = db.relationship('Tournaments', backref='videosGames', lazy=True)

class Seasons(db.Model):
  __tablename__ = 'seasons'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))

class Zones(db.Model):
  __tablename__ = 'zones'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  zones_id = db.relationship('Tournaments', backref='zones', lazy=True)

class Countries(db.Model):
  __tablename__ = 'countries'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  countries_id = db.relationship('Tournaments', backref='countries', lazy=True)
