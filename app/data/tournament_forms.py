from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, BooleanField, SelectField
from wtforms.validators import DataRequired, Length, Email, Regexp, NumberRange
from wtforms import validators

from ..roles.models import Role
from ..users.models import User
from .tournament_models import Tournaments


class EditTournamentsForm(FlaskForm):
  videosGames = SelectField('Nom du jeu', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  geolocalisation = SelectField('Geolocalisation', coerce=int,validators=[validators.optional()])
  competitions = SelectField('Compétition', coerce=int,validators=[validators.optional()])
  teams = SelectField('Equipe', coerce=int,validators=[validators.optional()])
  submit = SubmitField('Valider')
