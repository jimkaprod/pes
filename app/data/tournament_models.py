from flask import current_app
from .. import db

class Tournaments(db.Model):
  __tablename__ = 'tournaments'
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
