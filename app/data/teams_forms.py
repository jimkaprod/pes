from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, BooleanField, SelectField
from wtforms.validators import DataRequired, Length, Email, Regexp

from ..roles.models import Role
from ..users.models import User
from .teams_models import TeamsNames, TeamsTypes, TeamsLevels


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
