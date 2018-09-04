from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from sqlalchemy import desc
from ..decorators import admin_required
from .. import db

from . import data
from .teams_models import TeamsNames, TeamsTypes, TeamsLevels
from .general_models import VideosGamesNames, SeasonsNames, ZonesNames, CountriesNames
from .competitions_models import CompetitionsNames, CompetitionsTypes, CompetitionsCategories
from .tournament_models import Tournaments
from .competitions_forms import EditCompetitionsForm, EditCompetitionsCategoriesForm, EditCompetitionsNamesForm, EditCompetitionsTypesForm

###################
#Tournament
###################
@data.route('/tournament/tournaments-add', methods=['GET', 'POST'])
def tournaments_add():
    form = EditCompetitionsForm()
    choices = [(row.id, row.name) for row in VideosGamesNames.query.all()]
    label = (0, 'Selectionner')
    choices.insert(0,label)
    form.videosGames.choices = choices
    form.videosGames.default = "Selectionner"

    form.season.choices = [(row.id, row.name) for row in SeasonsNames.query.all()]
    form.season.default = "Selectionner"

    form.zones.choices = [(row.id, row.name) for row in ZonesNames.query.all()]
    form.zones.default = "Selectionner"

    form.countries.choices = [(row.id, row.name) for row in CountriesNames.query.all()]
    form.countries.default = "Selectionner"

    form.competitionsTypes.choices = [(row.id, row.name) for row in CompetitionsTypes.query.all()]
    form.competitionsTypes.default = "Selectionner"

    form.competitionsCategories.choices = [(row.id, row.name) for row in CompetitionsCategories.query.all()]
    form.competitionsCategories.default = "Selectionner"

    form.competitionsNames.choices = [(row.id, row.name) for row in CompetitionsNames.query.all()]
    form.competitionsNames.default = "Selectionner"

    form.teamsNames.choices = [(row.id, row.real_name) for row in TeamsNames.query.all()]
    form.teamsNames.default = "Selectionner"

    form.teamsTypes.choices = [(row.id, row.type) for row in TeamsTypes.query.all()]
    form.teamsTypes.default = "Selectionner"

    form.teamsLevels.choices = [(row.id, row.level) for row in TeamsLevels.query.all()]
    form.teamsLevels.default = "Selectionner"

    if form.validate_on_submit():
        item = Competitions(
            videos_games_names_id = form.videosGames.data,
            seasons_names_id = form.season.data,
            zones_names_id = form.zones.data,
            countries_names_id = form.countries.data,
            competitions_types_id = form.competitionsTypes.data,
            competitions_categories_id = form.competitionsCategories.data,
            competitions_names_id = form.competitionsNames.data,
            teams_names_id = form.teamsNames.data,
            teams_types_id = form.teamsTypes.data,
            teams_levels_id = form.teamsLevels.data
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
    .join(VideosGamesNames, VideosGamesNames.id==Tournaments.videos_games_names_id) \
    .add_columns(VideosGamesNames.id.label('videos_games_id'), VideosGamesNames.name.label('videos_games_names')) \
    .join(SeasonsNames, SeasonsNames.id==Tournaments.seasons_names_id) \
    .add_columns(SeasonsNames.id.label('seasons_id'), SeasonsNames.name.label('seasons_names')) \
    .join(ZonesNames, ZonesNames.id==Tournaments.zones_names_id) \
    .add_columns(ZonesNames.id.label('zones_id'), ZonesNames.name.label('zones_names')) \
    .join(CountriesNames, CountriesNames.id==Tournaments.countries_names_id) \
    .add_columns(CountriesNames.id.label('countries_id'), CountriesNames.name.label('countries_names')) \
    .join(CompetitionsNames, CompetitionsNames.id==Tournaments.competitions_names_id) \
    .add_columns(CompetitionsNames.id.label('competitions_names_id'), CompetitionsNames.name.label('competitions_names_name')) \
    .join(CompetitionsTypes, CompetitionsTypes.id==Tournaments.competitions_types_id) \
    .add_columns(CompetitionsTypes.id.label('competitions_types_id'), CompetitionsTypes.name.label('competitions_types_name')) \
    .join(CompetitionsCategories, CompetitionsCategories.id==Tournaments.competitions_categories_id) \
    .add_columns(CompetitionsCategories.id.label('competitions_categories_id'), CompetitionsCategories.name.label('competitions_categories_name')) \
    .join(TeamsNames, TeamsNames.id==Tournaments.teams_names_id) \
    .add_columns(TeamsNames.id.label('teams_names_id'), TeamsNames.pes_name.label('teams_names_pes_name'), TeamsNames.real_name.label('teams_names_real_name')) \
    .join(TeamsTypes, TeamsTypes.id==Tournaments.teams_types_id) \
    .add_columns(TeamsTypes.id.label('teams_types_id'), TeamsTypes.type.label('teams_types_type')) \
    .join(TeamsLevels, TeamsLevels.id==Tournaments.teams_levels_id) \
    .add_columns(TeamsLevels.id.label('teams_levels_id'), TeamsLevels.level.label('teams_levels_level')) \
    .order_by(desc(Tournaments.id)).all()

    return render_template('data/tournaments_list.html', list=list)

@data.route('/tournament/tournaments-edit/<int:id>', methods=['GET', 'POST'])
def tournaments_edit(id):
    fields = Tournaments.query.get_or_404(id)
    form = EditTournamentsForm()
    form.videosGames.choices = [(row.id, row.name) for row in VideosGamesNames.query.all()]
    form.videosGames.default = fields.videos_games_names_id

    form.season.choices = [(row.id, row.name) for row in SeasonsNames.query.all()]
    form.season.default = fields.seasons_names_id

    form.zones.choices = [(row.id, row.name) for row in ZonesNames.query.all()]
    form.zones.default = fields.zones_names_id

    form.countries.choices = [(row.id, row.name) for row in CountriesNames.query.all()]
    form.countries.default = fields.countries_names_id

    form.competitionsTypes.choices = [(row.id, row.name) for row in CompetitionsTypes.query.all()]
    form.competitionsTypes.default = fields.competitions_types_id

    form.competitionsCategories.choices = [(row.id, row.name) for row in CompetitionsCategories.query.all()]
    form.competitionsCategories.default = fields.competitions_categories_id

    form.competitionsNames.choices = [(row.id, row.name) for row in CompetitionsNames.query.all()]
    form.competitionsNames.default = fields.competitions_names_id

    form.teamsNames.choices = [(row.id, row.real_name) for row in TeamsNames.query.all()]
    form.teamsNames.default = fields.teams_names_id

    form.teamsTypes.choices = [(row.id, row.type) for row in TeamsTypes.query.all()]
    form.teamsTypes.default = fields.teams_types_id

    form.teamsLevels.choices = [(row.id, row.level) for row in TeamsLevels.query.all()]
    form.teamsLevels.default = fields.teams_levels_id



    if form.validate_on_submit():
        fields.videos_games_names_id = form.videosGames.data
        fields.seasons_names_id = form.season.data
        fields.zones_names_id = form.zones.data
        fields.countries_names_id = form.countries.data
        fields.competitions_types_id = form.competitionsTypes.data
        fields.competitions_categories_id = form.competitionsCategories.data
        fields.competitions_names_id = form.competitionsNames.data
        fields.teams_names_id = form.teamsNames.data
        fields.teams_types_id = form.teamsTypes.data
        fields.teams_levels_id = form.teamsLevels.data
        db.session.add(fields)
        db.session.commit()
        flash('tournament has been updated.')
        return redirect(url_for('.tournaments_list', fields=fields))

    # form.videosGames.data = fields.videos_games_names_id
    form.process()
    return render_template('data/tournaments_edit.html', form=form, fields=fields)
