from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, BooleanField, SelectField
from wtforms.validators import DataRequired, Length, Email, Regexp, NumberRange

from ..roles.models import Role
from ..users.models import User
from .teams_models import Teams, TeamsNames, TeamsTypes, TeamsLevels

class EditTeamsForm(FlaskForm):
  teamsNames = SelectField('Nom de lequipe', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  teamsTypes = SelectField('type dequipe', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  teamsLevels = SelectField('niveau de lequipe', coerce=int,validators=[DataRequired(), NumberRange(min=1)])
  submit = SubmitField('Valider')

class EditTeamsNamesForm(FlaskForm):
  pes_name = StringField('Nom Pes', validators=[Length(0, 64)])
  real_name = StringField('Nom de léquipe', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

class EditTeamsTypesForm(FlaskForm):
  type = StringField('Type dequipe', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

class EditTeamsLevelsForm(FlaskForm):
  level = StringField('Niveau de lequipe', validators=[Length(0, 64)])
  submit = SubmitField('Valider')
