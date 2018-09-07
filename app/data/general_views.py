from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from sqlalchemy import desc
from ..decorators import admin_required
from .. import db

from . import data
from .general_models import VideosGames, Seasons, Zones, Countries
from .general_forms import EditVideosGamesForm, EditSeasonsForm, EditZonesForm, EditCountriesForm
###################
#VideosGames
###################
@data.route('/general/videos-games-add', methods=['GET', 'POST'])
def videos_games_add():
    form = EditVideosGamesForm()
    if form.validate_on_submit():
        item = VideosGames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('VideosGames has been added.')
        return redirect(url_for('.videos_list'))
    return render_template('data/videos_games_edit.html', form=form)

@data.route('/general/videos-games-delete/<int:id>', methods=['GET', 'POST'])
def videos_games_delete(id):
    item = VideosGames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('VideosGames has been deleted.')
    return redirect(url_for('.videos_games_list'))

@data.route('/general/videos-games-list')
def videos_games_list():
    list = VideosGames.query.all()
    return render_template('data/videos_games_list.html', list=list)

@data.route('/general/videos-games-edit/<int:id>', methods=['GET', 'POST'])
def videos_games_edit(id):
    fields = VideosGames.query.get_or_404(id)
    form = EditVideosGamesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('VideosGames has been updated.')
        return redirect(url_for('.videos_games_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/videos_games_edit.html', form=form, fields=fields)

###################
#Seasons
###################
@data.route('/general/seasons-add', methods=['GET', 'POST'])
def seasons_add():
    form = EditSeasonsForm()
    if form.validate_on_submit():
        item = Seasons(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('Seasons has been added.')
        return redirect(url_for('.seasons_list'))
    return render_template('data/seasons_edit.html', form=form)

@data.route('/general/seasons-delete/<int:id>', methods=['GET', 'POST'])
def seasons_delete(id):
    item = Seasons.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('Seasons has been deleted.')
    return redirect(url_for('.seasons_list'))

@data.route('/general/seasons-list')
def seasons_list():
    list = Seasons.query.all()
    return render_template('data/seasons_list.html', list=list)

@data.route('/general/seasons-edit/<int:id>', methods=['GET', 'POST'])
def seasons_edit(id):
    fields = Seasons.query.get_or_404(id)
    form = EditSeasonsForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('Seasons has been updated.')
        return redirect(url_for('.seasons_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/seasons_edit.html', form=form, fields=fields)

###################
#Zones
###################
@data.route('/general/zones-add', methods=['GET', 'POST'])
def zones_add():
    form = EditZonesForm()
    if form.validate_on_submit():
        item = Zones(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('Zones has been added.')
        return redirect(url_for('.zones_list'))
    return render_template('data/zones_edit.html', form=form)

@data.route('/general/zones-delete/<int:id>', methods=['GET', 'POST'])
def zones_delete(id):
    item = Zones.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('Zones has been deleted.')
    return redirect(url_for('.zones_list'))

@data.route('/general/zones-list')
def zones_list():
    list = Zones.query.all()
    return render_template('data/zones_list.html', list=list)

@data.route('/general/zones-edit/<int:id>', methods=['GET', 'POST'])
def zones_edit(id):
    fields = Zones.query.get_or_404(id)
    form = EditZonesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        fields.abbreviation = form.abbreviation.data
        db.session.add(fields)
        db.session.commit()
        flash('Zones has been updated.')
        return redirect(url_for('.zones_list', fields=fields))
    form.name.data = fields.name
    form.abbreviation.data = fields.abbreviation
    return render_template('data/zones_edit.html', form=form, fields=fields)

###################
#CountriesNames
###################
@data.route('/general/countries-add', methods=['GET', 'POST'])
def countries_add():
    form = EditCountriesForm()
    if form.validate_on_submit():
        item = Countries(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('Countries has been added.')
        return redirect(url_for('.countries_list'))
    return render_template('data/countries_edit.html', form=form)

@data.route('/general/countries-delete/<int:id>', methods=['GET', 'POST'])
def countries_delete(id):
    item = Countries.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('Countries has been deleted.')
    return redirect(url_for('.countries_list'))

@data.route('/general/countries-list')
def countries_list():
    list = Countries.query.all()
    return render_template('data/countries_list.html', list=list)

@data.route('/general/countries-edit/<int:id>', methods=['GET', 'POST'])
def countries_edit(id):
    fields = Countries.query.get_or_404(id)
    form = EditCountriesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('Countries has been updated.')
        return redirect(url_for('.countries_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/countries_edit.html', form=form, fields=fields)
