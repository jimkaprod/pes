from flask import current_app
from .. import db
from .tournament_models import Tournaments

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

class Competitions(db.Model):
  __tablename__ = 'competitions'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True)
  competitions_names_id = db.Column(db.Integer, db.ForeignKey('competitions_names.id'), nullable=False)
  competitions_categories_id = db.Column(db.Integer, db.ForeignKey('competitions_categories.id'), nullable=False)
  competitions_types_id = db.Column(db.Integer, db.ForeignKey('competitions_types.id'), nullable=False)
  competitions_id = db.relationship('Tournaments', backref='competitions', lazy=True)
