from flask import Blueprint

data = Blueprint('data', __name__, template_folder='templates/', static_folder='static')

from . import views, general_views, teams_views, competitions_views, tournament_views
