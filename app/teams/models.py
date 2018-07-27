from flask import current_app
from .. import db

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

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


class Zones(db.Model):
  __tablename__ = 'zones'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


class TeamsTypes(db.Model):
  __tablename__ = 'teams_types'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  type = db.Column(db.String(64), unique=True)

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0

class Countries(db.Model):
  __tablename__ = 'countries'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64), unique=True)
  abbreviation = db.Column(db.String(3), unique=True)
  zones_id = db.Column(db.Integer, db.ForeignKey('zones.id'))

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0

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

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0

class CompetitionsSeasons(db.Model):
  __tablename__ = 'competitions_seasons'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  seasons_id = db.Column(db.Integer, db.ForeignKey('seasons.id'))
  competitions_id = db.Column(db.Integer, db.ForeignKey('competitions.id'))
  teams_id = db.Column(db.Integer, db.ForeignKey('game_teams.id'))

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


class CompetitionsTypes(db.Model):
  __tablename__ = 'competitions_types'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0

class CompetitionsCategories(db.Model):
  __tablename__ = 'competitions_categories'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0


class Seasons(db.Model):
  __tablename__ = 'seasons'
  __table_args__ = {'extend_existing': True} 
  id = db.Column(db.Integer, primary_key=True)
  name = db.Column(db.String(64))

  # def __init__(self, **kwargs):
  #   super(Role, self).__init__(**kwargs)
  #   if self.permissions is None:
  #     self.permissions = 0



