from flask import current_app
from .. import db

class Tournaments(db.Model):
  __tablename__ = 'tournaments'
  __table_args__ = {'extend_existing': True}
  id = db.Column(db.Integer, primary_key=True, autoincrement=True)
  videos_games_id = db.Column(db.Integer, db.ForeignKey('videos_games.id'), nullable=False)
  zones_id = db.Column(db.Integer, db.ForeignKey('zones.id'), nullable=False)
  countries_id = db.Column(db.Integer, db.ForeignKey('countries.id'), nullable=False)
  competitions_id = db.Column(db.Integer, db.ForeignKey('competitions.id'), nullable=False)
  teams_id = db.Column(db.Integer, db.ForeignKey('teams.id'), nullable=False)
