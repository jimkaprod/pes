from flask import Blueprint

competitions = Blueprint('competitions', __name__, template_folder='templates/', static_folder='static')

from . import views
