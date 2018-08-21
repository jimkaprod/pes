from flask import Flask
from flask_debugtoolbar import DebugToolbarExtension
from flask_bootstrap import Bootstrap
from flask_mail import Mail
from flask_moment import Moment
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from config import config

class SQLiteAlchemy(SQLAlchemy):
    def apply_driver_hacks(self, app, info, options):
        options.update({
            'isolation_level': 'AUTOCOMMIT',
            'encoding': 'latin1',
            'echo': True
        })
        super(SQLiteAlchemy, self).apply_driver_hacks(app, info, options)


bootstrap = Bootstrap()
mail = Mail()
moment = Moment()
db = SQLAlchemy()
login_manager = LoginManager()
login_manager.login_view = 'auth.login'

def create_app(config_name):
    app = Flask(__name__)
    app.debug = True
    app.config.from_object(config[config_name])
    config[config_name].init_app(app)

    bootstrap.init_app(app)
    mail.init_app(app)
    moment.init_app(app)
    db.init_app(app)
    # db.reflect(app=app)
    login_manager.init_app(app)
    toolbar = DebugToolbarExtension(app)
    from .main import main as main_blueprint
    app.register_blueprint(main_blueprint)

    from .auth import auth as auth_blueprint
    app.register_blueprint(auth_blueprint)

    from .users import users as users_blueprint
    app.register_blueprint(users_blueprint)

    from .teams import teams as teams_blueprint
    app.register_blueprint(teams_blueprint, url_prefix='/teams')

    from .competitions import competitions as competitions_blueprint
    app.register_blueprint(competitions_blueprint, url_prefix='/competitions')

    from .data import data as data_blueprint
    app.register_blueprint(data_blueprint, url_prefix='/data')

    return app
