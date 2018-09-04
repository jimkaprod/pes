from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from . import data
from ..decorators import admin_required

@data.route('/home', methods=['GET', 'POST'])
def index():
    return render_template('data/index.html')

@data.route('/general', methods=['GET', 'POST'])
def general():
    return render_template('data/general.html')

@data.route('/teams', methods=['GET', 'POST'])
def teams():
    return render_template('data/teams.html')


