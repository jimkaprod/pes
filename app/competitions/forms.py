from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, BooleanField, SelectField
from wtforms.validators import DataRequired, Length, Email, Regexp

from ..roles.models import Role
from ..users.models import User
from .models import VideosGamesNames, CountriesNames, CompetitionsNames, CompetitionsTypes, CompetitionsCategories, SeasonsNames


class EditSeasonsNamesForm(FlaskForm):
  name = StringField('Nom de la saison', validators=[Length(0, 64)])
  submit = SubmitField('Valider')

# class EditProfileAdminForm(FlaskForm):
#   email = StringField('Email', validators=[DataRequired(), Length(1,64), Email()])
#   username = StringField('Username', validators=[DataRequired(), Length(1, 64), Regexp('^[A-Za-z][A-Za-z0-9_.]*$', 0, 'Usernames must have only letters, numbers, dots or underscores')])
#   confirmed = BooleanField('Confirmed')
#   role = SelectField('Role', coerce=int)
#   name = StringField('Real name', validators=[Length(0, 64)])
#   location = StringField('Location', validators=[Length(0, 64)])
#   about_me = TextAreaField('About me')
#   submit = SubmitField('Submit')

  # def __init__(self, user, *args, **kwargs):pass

