from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from sqlalchemy import desc, asc
from ..decorators import admin_required
from .. import db

from . import data
from .teams_models import Teams, TeamsNames, TeamsTypes, TeamsLevels
from .teams_forms import EditTeamsForm, EditTeamsNamesForm, EditTeamsTypesForm, EditTeamsLevelsForm

###################
#TeamsNames
###################
@data.route('/teams/teams-names-add', methods=['GET', 'POST'])
def teams_names_add():
    form = EditTeamsNamesForm()
    if form.validate_on_submit():
        item = TeamsNames(pes_name=form.pes_name.data, real_name=form.real_name.data)
        db.session.add(item)
        db.session.commit()
        flash('TeamsNames has been added.')
        return redirect(url_for('.teams_names_list'))
    return render_template('data/teams_names_edit.html', form=form)

@data.route('/teams/teams-names-delete/<int:id>', methods=['GET', 'POST'])
def teams_names_delete(id):
    item = TeamsNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('TeamsNames has been deleted.')
    return redirect(url_for('.teams_names_list'))

@data.route('/teams/teams-names-list')
def teams_names_list():
    list = TeamsNames.query.all()
    return render_template('data/teams_names_list.html', list=list)

@data.route('/teams/teams-names-edit/<int:id>', methods=['GET', 'POST'])
def teams_names_edit(id):
    fields = TeamsNames.query.get_or_404(id)
    form = EditTeamsNamesForm()
    if form.validate_on_submit():
        fields.pes_name = form.pes_name.data
        fields.real_name = form.real_name.data
        db.session.add(fields)
        db.session.commit()
        flash('TeamsNames has been updated.')
        return redirect(url_for('.teams_names_list', fields=fields))
    form.pes_name.data = fields.pes_name
    form.real_name.data = fields.real_name
    return render_template('data/teams_names_edit.html', form=form, fields=fields)
###################
#TeamsTypes
###################
@data.route('/competitions/teams-types-add', methods=['GET', 'POST'])
def teams_types_add():
    form = EditTeamsTypesForm()
    if form.validate_on_submit():
        item = TeamsTypes(type=form.type.data)
        db.session.add(item)
        db.session.commit()
        flash('TeamsTypes has been added.')
        return redirect(url_for('.teams_types_list'))
    return render_template('data/teams_types_edit.html', form=form)

@data.route('/competitions/teams-types-delete/<int:id>', methods=['GET', 'POST'])
def teams_types_delete(id):
    item = TeamsTypes.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('TeamsTypes has been deleted.')
    return redirect(url_for('.teams_types_list'))

@data.route('/teams/teams-types-list')
def teams_types_list():
    list = TeamsTypes.query.all()
    return render_template('data/teams_types_list.html', list=list)

@data.route('/teams/teams-types-edit/<int:id>', methods=['GET', 'POST'])
def teams_types_edit(id):
    fields = TeamsTypes.query.get_or_404(id)
    form = EditTeamsTypesForm()
    if form.validate_on_submit():
        fields.type = form.type.data
        db.session.add(fields)
        db.session.commit()
        flash('TeamsTypes has been updated.')
        return redirect(url_for('.teams_types_list', fields=fields))
    form.type.data = fields.type
    return render_template('data/teams_types_edit.html', form=form, fields=fields)

###################
#TeamsLevels
###################
@data.route('/competitions/teams-levels-add', methods=['GET', 'POST'])
def teams_levels_add():
    form = EditTeamsLevelsForm()
    if form.validate_on_submit():
        item = TeamsLevels(level=form.level.data)
        db.session.add(item)
        db.session.commit()
        flash('TeamsLevels has been added.')
        return redirect(url_for('.teams_levels_list'))
    return render_template('data/teams_levels_edit.html', form=form)

@data.route('/competitions/teams-levels-delete/<int:id>', methods=['GET', 'POST'])
def teams_levels_delete(id):
    item = TeamsLevels.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('TeamsLevels has been deleted.')
    return redirect(url_for('.teams_levels_list'))

@data.route('/teams/teams-levels-list')
def teams_levels_list():
    list = TeamsLevels.query.all()
    return render_template('data/teams_levels_list.html', list=list)

@data.route('/teams/teams-levels-edit/<int:id>', methods=['GET', 'POST'])
def teams_levels_edit(id):
    fields = TeamsLevels.query.get_or_404(id)
    form = EditTeamsLevelsForm()
    if form.validate_on_submit():
        fields.level = form.level.data
        db.session.add(fields)
        db.session.commit()
        flash('TeamsLevels has been updated.')
        return redirect(url_for('.temas_levels_list', fields=fields))
    form.level.data = fields.level
    return render_template('data/teams_levels_edit.html', form=form, fields=fields)


###################
#Teams
###################
@data.route('/teams/teams-add', methods=['GET', 'POST'])
def teams_add():
    form = EditTeamsForm()

    form.teamsNames.choices = [(row.id, row.real_name) for row in TeamsNames.query.all()]
    form.teamsNames.default = "Selectionner"

    form.teamsTypes.choices = [(row.id, row.type) for row in TeamsTypes.query.all()]
    form.teamsTypes.default = "Selectionner"

    form.teamsLevels.choices = [(row.id, row.level) for row in TeamsLevels.query.all()]
    form.teamsLevels.default = "Selectionner"

    if form.validate_on_submit():
        item = Teams(
            teams_names_id = form.teamsNames.data,
            teams_types_id = form.teamsTypes.data,
            teams_levels_id = form.teamsLevels.data
        )
        db.session.add(item)
        db.session.commit()
        flash('Teams has been added.')
        return redirect(url_for('.teams_list'))
    form.process()
    return render_template('data/teams_edit.html', form=form)

@data.route('/teams/teams-delete/<int:id>', methods=['GET', 'POST'])
def teams_delete(id):
    item = Teams.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('Teams has been deleted.')
    return redirect(url_for('.teams_list'))

@data.route('/teams/teams-list')
def teams_list():
    list = Teams.query \
        .add_columns(Teams.id.label('id')) \
        .join(TeamsNames, TeamsNames.id==Teams.teams_names_id) \
        .add_columns(TeamsNames.pes_name.label('pes_name'), TeamsNames.real_name.label('real_name')) \
        .join(TeamsTypes, TeamsTypes.id==Teams.teams_types_id) \
        .add_columns(TeamsTypes.type.label('type')) \
        .join(TeamsLevels, TeamsLevels.id==Teams.teams_levels_id) \
        .add_columns(TeamsLevels.level.label('level')) \
        .order_by(asc(Teams.id)).all()

    return render_template('data/teams_list.html', list=list)

@data.route('/teams/teams-edit/<int:id>', methods=['GET', 'POST'])
def teams_edit(id):
    fields = Teams.query.get_or_404(id)
    form = EditTeamsForm()

    form.teamsNames.choices = [(row.id, row.real_name) for row in TeamsNames.query.all()]
    form.teamsNames.default = fields.teams_names_id

    form.teamsTypes.choices = [(row.id, row.type) for row in TeamsTypes.query.all()]
    form.teamsTypes.default = fields.teams_types_id

    form.teamsLevels.choices = [(row.id, row.level) for row in TeamsLevels.query.all()]
    form.teamsLevels.default = fields.teams_levels_id

    if form.validate_on_submit():
        fields.teams_names_id = form.teamsNames.data
        fields.teams_types_id = form.teamsTypes.data
        fields.teams_levels_id = form.teamsLevels.data
        db.session.add(fields)
        db.session.commit()
        flash('Teams has been updated.')
        return redirect(url_for('.teams_list', fields=fields))

    form.process()
    return render_template('data/teams_edit.html', form=form, fields=fields)
