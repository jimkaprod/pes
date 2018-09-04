from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, BooleanField, SelectField
from wtforms.validators import DataRequired, Length, Email, Regexp, NumberRange
from wtforms import validators

from ..roles.models import Role
from ..users.models import User
from .tournament_models import Tournaments


class EditTournamentsForm(FlaskForm):
  videosGames = SelectField('Nom du jeu', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  season = SelectField('Saison', coerce=int,validators=[validators.optional()])
  zones = SelectField('Zone', coerce=int,validators=[validators.optional()])
  countries = SelectField('Pays', coerce=int,validators=[validators.optional()])
  competitionsTypes = SelectField('Type de compétition', coerce=int,validators=[validators.optional()])
  competitionsCategories = SelectField('Catégorie de la compétition', coerce=int,validators=[validators.optional()])
  competitionsNames = SelectField('Nom de la compétition', coerce=int,validators=[validators.optional()])
  teamsNames = SelectField('Nom de lequipe', coerce=int,validators=[validators.optional()])
  teamsTypes = SelectField('Type de lequipe', coerce=int,validators=[validators.optional()])
  teamsLevels = SelectField('Niveau de lequipe', coerce=int,validators=[validators.optional()])
  submit = SubmitField('Valider')
