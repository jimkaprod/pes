from flask import current_app
from .. import db

class Teams(db.Model):
  __tablename__ = 'game_teams'
  team_id = db.Column(db.Integer, primary_key=True)
  team_type_id = db.Column(db.Integer, db.ForeignKey('teams_type.id'))
  zone_id = db.Column(db.Integer, db.ForeignKey('zones.id'))
  country_id = db.Column(db.Integer, db.ForeignKey('country.id'))
  real_name = db.Column(db.String(64), unique=True)
  game_name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(64), unique=True)
  # default = db.Column(db.Boolean, default=False, index=True)
  # permissions = db.Column(db.Integer)
  # users = db.relationship('User', backref='role', lazy='dynamic')

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


class Zones(db.Model):
  __tablename__ = 'zones'
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


class TeamsType(db.Model):
  __tablename__ = 'teams_type'
  id = db.Column(db.Integer, primary_key=True)
  type = db.Column(db.String(64), unique=True)

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


class Country(db.Model):
  __tablename__ = 'teams_type'
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


