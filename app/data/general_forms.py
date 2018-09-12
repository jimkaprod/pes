from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, BooleanField, SelectField
from wtforms.validators import DataRequired, Length, Email, Regexp, NumberRange
from wtforms import validators

from ..roles.models import Role
from ..users.models import User
from .general_models import VideosGames, Seasons, Zones, Countries, Geolocalisation

class EditVideosGamesForm(FlaskForm):
  name = StringField('Nom du jeu vidéo', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

class EditSeasonsForm(FlaskForm):
  name = StringField('Nom de la saison', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

class EditZonesForm(FlaskForm):
  name = StringField('Nom de la zone', validators=[Length(0, 64)])
  abbreviation = StringField('Abbreviation de la zone', validators=[Length(0, 3)])
  submit = SubmitField('Valider')

class EditCountriesForm(FlaskForm):
  name = StringField('Nom du pays', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

class EditGeolocalisationForm(FlaskForm):
  zonesNames = SelectField('Nom de la zone', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  countriesNames = SelectField('Nom du pays', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  submit = SubmitField('Valider')

