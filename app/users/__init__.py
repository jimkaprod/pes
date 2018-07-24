from flask import Blueprint

users = Blueprint('users', __name__, template_folder='templates/')

from ..main import errors
from . import views, errors

from ..roles.models import Permission

@users.app_context_processor
def inject_permissions():
  return dict(Permission=Permission)