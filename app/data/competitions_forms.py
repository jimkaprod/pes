from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, BooleanField, SelectField
from wtforms.validators import DataRequired, Length, Email, Regexp, NumberRange
from wtforms import validators

from ..roles.models import Role
from ..users.models import User
from .competitions_models import CompetitionsNames, CompetitionsTypes, CompetitionsCategories


class EditCompetitionsForm(FlaskForm):
  competitionsTypes = SelectField('Type de compétition', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  competitionsCategories = SelectField('Catégorie de la compétition', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  competitionsNames = SelectField('Nom de la compétition', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  submit = SubmitField('Valider')

class EditCompetitionsCategoriesForm(FlaskForm):
  name = StringField('Catégorie de la compétition', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

class EditCompetitionsNamesForm(FlaskForm):
  name = StringField('Nom de la compétition', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

class EditCompetitionsTypesForm(FlaskForm):
  name = StringField('Type de compétition', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

