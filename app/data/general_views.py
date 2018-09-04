from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from sqlalchemy import desc
from ..decorators import admin_required
from .. import db

from . import data
from .general_models import VideosGamesNames, SeasonsNames, ZonesNames, CountriesNames
from .general_forms import EditVideosGamesNamesForm, EditSeasonsNamesForm, EditZonesNamesForm, EditCountriesNamesForm
###################
#VideosGamesNames
###################
@data.route('/general/videos-games-names-add', methods=['GET', 'POST'])
def videos_games_names_add():
    form = EditVideosGamesNamesForm()
    if form.validate_on_submit():
        item = VideosGamesNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('VideosGamesNames has been added.')
        return redirect(url_for('.videos_games_names_list'))
    return render_template('data/videos_games_names_edit.html', form=form)

@data.route('/general/videos-games-names-delete/<int:id>', methods=['GET', 'POST'])
def videos_games_names_delete(id):
    item = VideosGamesNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('VideosGamesNames has been deleted.')
    return redirect(url_for('.videos_games_names_list'))

@data.route('/general/videos-games-names-list')
def videos_games_names_list():
    list = VideosGamesNames.query.all()
    return render_template('data/videos_games_names_list.html', list=list)

@data.route('/general/videos-games-names-edit/<int:id>', methods=['GET', 'POST'])
def videos_games_names_edit(id):
    fields = VideosGamesNames.query.get_or_404(id)
    form = EditVideosGamesNamesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('VideosGamesNames has been updated.')
        return redirect(url_for('.videos_games_names_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/videos_games_names_edit.html', form=form, fields=fields)

###################
#SeasonsNames
###################
@data.route('/general/seasons-names-add', methods=['GET', 'POST'])
def seasons_names_add():
    form = EditSeasonsNamesForm()
    if form.validate_on_submit():
        item = SeasonsNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('SeasonsNames has been added.')
        return redirect(url_for('.seasons_names_list'))
    return render_template('data/seasons_names_edit.html', form=form)

@data.route('/general/seasons-names-delete/<int:id>', methods=['GET', 'POST'])
def seasons_names_delete(id):
    item = SeasonsNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('SeasonsNames has been deleted.')
    return redirect(url_for('.seasons_names_list'))

@data.route('/general/seasons-names-list')
def seasons_names_list():
    list = SeasonsNames.query.all()
    return render_template('data/seasons_names_list.html', list=list)

@data.route('/general/seasons-names-edit/<int:id>', methods=['GET', 'POST'])
def seasons_names_edit(id):
    fields = SeasonsNames.query.get_or_404(id)
    form = EditSeasonsNamesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('SeasonsNames has been updated.')
        return redirect(url_for('.seasons_names_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/seasons_names_edit.html', form=form, fields=fields)

###################
#ZonesNames
###################
@data.route('/general/zones-names-add', methods=['GET', 'POST'])
def zones_names_add():
    form = EditZonesNamesForm()
    if form.validate_on_submit():
        item = ZonesNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('ZonesNames has been added.')
        return redirect(url_for('.zones_names_list'))
    return render_template('data/zones_names_edit.html', form=form)

@data.route('/general/zones-names-delete/<int:id>', methods=['GET', 'POST'])
def zones_names_delete(id):
    item = ZonesNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('ZonesNames has been deleted.')
    return redirect(url_for('.zones_names_list'))

@data.route('/general/zones-names-list')
def zones_names_list():
    list = ZonesNames.query.all()
    return render_template('data/zones_names_list.html', list=list)

@data.route('/general/zones-names-edit/<int:id>', methods=['GET', 'POST'])
def zones_names_edit(id):
    fields = ZonesNames.query.get_or_404(id)
    form = EditZonesNamesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        fields.abbreviation = form.abbreviation.data
        db.session.add(fields)
        db.session.commit()
        flash('ZonesNames has been updated.')
        return redirect(url_for('.zones_names_list', fields=fields))
    form.name.data = fields.name
    form.abbreviation.data = fields.abbreviation
    return render_template('data/zones_names_edit.html', form=form, fields=fields)

###################
#CountriesNames
###################
@data.route('/general/countries-names-add', methods=['GET', 'POST'])
def countries_names_add():
    form = EditCountriesNamesForm()
    if form.validate_on_submit():
        item = CountriesNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('CountriesNames has been added.')
        return redirect(url_for('.countries_names_list'))
    return render_template('data/countries_names_edit.html', form=form)

@data.route('/general/countries-names-delete/<int:id>', methods=['GET', 'POST'])
def countries_names_delete(id):
    item = CountriesNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('CountriesNames has been deleted.')
    return redirect(url_for('.countries_names_list'))

@data.route('/general/countries-names-list')
def countries_names_list():
    list = CountriesNames.query.all()
    return render_template('data/countries_names_list.html', list=list)

@data.route('/general/countries-names-edit/<int:id>', methods=['GET', 'POST'])
def countries_names_edit(id):
    fields = CountriesNames.query.get_or_404(id)
    form = EditCountriesNamesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('CountriesNames has been updated.')
        return redirect(url_for('.countries_names_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/countries_names_edit.html', form=form, fields=fields)
