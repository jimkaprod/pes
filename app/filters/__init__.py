from flask import Blueprint

filters = Blueprint('filters', __name__, template_folder='templates/', static_folder='static')

from . import views
