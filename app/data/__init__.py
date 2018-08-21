from flask import Blueprint

data = Blueprint('data', __name__, template_folder='templates/', static_folder='static')

from . import views, teams_views, competitions_views
