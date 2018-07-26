from flask import Blueprint

teams = Blueprint('teams', __name__, template_folder='templates/')

from . import views
