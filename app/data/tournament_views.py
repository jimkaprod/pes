from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from sqlalchemy import desc, asc
from ..decorators import admin_required
from .. import db

from . import data
from .teams_models import Teams
from .general_models import VideosGames, Zones, Countries
from .competitions_models import Competitions, CompetitionsNames
from .teams_models import Teams, TeamsNames
from .tournament_models import Tournaments
from .tournament_forms import EditTournamentsForm

###################
#Tournament
###################
@data.route('/tournament/tournaments-add', methods=['GET', 'POST'])
def tournaments_add():
    form = EditTournamentsForm()

    label = (0, 'Selectionner')

    form.videosGames.choices = [(row.id, row.name) for row in VideosGames.query.all()]
    form.videosGames.choices.insert(0,label)
    form.videosGames.default = "Selectionner"

    form.zones.choices = [(row.id, row.name) for row in Zones.query.all()]
    form.zones.choices.insert(0,label)
    form.zones.default = "Selectionner"

    form.countries.choices = [(row.id, row.name) for row in Countries.query.all()]
    form.countries.choices.insert(0,label)
    form.countries.default = "Selectionner"

    competitionsChoices = Competitions.query \
        .add_columns(Competitions.id.label('id')) \
        .join(CompetitionsNames, CompetitionsNames.id==Competitions.competitions_names_id) \
        .add_columns(CompetitionsNames.name.label('competition')) \
        .order_by(asc(Competitions.id)).all()

    competitionsChoices = [(row.id, row.competition) for row in competitionsChoices]

    form.competitions.choices = competitionsChoices
    form.competitions.choices.insert(0,label)
    form.competitions.default = "Selectionner"

    teamsChoices = Teams.query \
        .add_columns(Teams.id.label('id')) \
        .join(TeamsNames, TeamsNames.id==Teams.teams_names_id) \
        .add_columns(TeamsNames.real_name.label('team')) \
        .order_by(asc(Teams.id)).all()

    teamsChoices = [(row.id, row.team) for row in teamsChoices]

    form.teams.choices = teamsChoices
    form.teams.choices.insert(0,label)
    form.teams.default = "Selectionner"


    if form.validate_on_submit():
        item = Tournaments(
            videos_games_id = form.videosGames.data,
            zones_id = form.zones.data,
            countries_id = form.countries.data,
            competitions_id = form.competitions.data,
            teams_id = form.teams.data
        )
        db.session.add(item)
        db.session.commit()
        flash('tournament has been added.')
        return redirect(url_for('.tournaments_list'))
    return render_template('data/tournaments_edit.html', form=form)

@data.route('/tournament/tournaments-delete/<int:id>', methods=['GET', 'POST'])
def tournaments_delete(id):
    item = Tournaments.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('tournament has been deleted.')
    return redirect(url_for('.tournaments_list'))


@data.route('/tournament/tournaments-list', methods=['GET', 'POST'])
def tournaments_list():
    list = Tournaments.query \
    .add_columns(Tournaments.id.label('id')) \
    .join(VideosGames, VideosGames.id==Tournaments.videos_games_id) \
    .add_columns(VideosGames.id.label('videos_games_id'), VideosGames.name.label('videos_games')) \
    .join(Zones, Zones.id==Tournaments.zones_id) \
    .add_columns(Zones.id.label('zones_id'), Zones.name.label('zones')) \
    .join(Countries, Countries.id==Tournaments.countries_id) \
    .add_columns(Countries.id.label('countries_id'), Countries.name.label('countries')) \
    .join(Competitions, Competitions.id==Tournaments.competitions_id) \
    .join(Teams, Teams.id==Tournaments.teams_id) \
    .add_columns(Teams.id.label('teams_id')) \
    .order_by(desc(Tournaments.id)).all()

    return render_template('data/tournaments_list.html', list=list)

@data.route('/tournament/tournaments-edit/<int:id>', methods=['GET', 'POST'])
def tournaments_edit(id):
    fields = Tournaments.query.get_or_404(id)
    form = EditTournamentsForm()

    form.videosGames.choices = [(row.id, row.name) for row in VideosGames.query.all()]
    form.videosGames.default = fields.videos_games_id

    form.zones.choices = [(row.id, row.name) for row in Zones.query.all()]
    form.zones.default = fields.zones_id

    form.countries.choices = [(row.id, row.name) for row in Countries.query.all()]
    form.countries.default = fields.countries_id

    competitionsChoices = Competitions.query \
        .add_columns(Competitions.id.label('id')) \
        .join(CompetitionsNames, CompetitionsNames.id==Competitions.competitions_names_id) \
        .add_columns(CompetitionsNames.name.label('competition')) \
        .order_by(asc(Competitions.id)).all()

    competitionsChoices = [(row.id, row.competition) for row in competitionsChoices]

    form.competitions.choices = competitionsChoices
    form.competitions.default = fields.competitions_id

    teamsChoices = Teams.query \
        .add_columns(Teams.id.label('id')) \
        .join(TeamsNames, TeamsNames.id==Teams.teams_names_id) \
        .add_columns(TeamsNames.real_name.label('team')) \
        .order_by(asc(Teams.id)).all()

    teamsChoices = [(row.id, row.team) for row in teamsChoices]

    form.teams.choices = teamsChoices
    form.teams.default = fields.teams_id

    if form.validate_on_submit():
        fields.videos_games_id = form.videosGames.data
        fields.zones_id = form.zones.data
        fields.countries_id = form.countries.data
        fields.competitions_id = form.competitions.data
        fields.teams_id = form.teams.data
        db.session.add(fields)
        db.session.commit()
        flash('tournament has been updated.')
        return redirect(url_for('.tournaments_list', fields=fields))

    form.process()
    return render_template('data/tournaments_edit.html', form=form, fields=fields)
