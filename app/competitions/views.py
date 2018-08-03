from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from ..decorators import admin_required
from .. import db
from .models import VideosGamesNames, CountriesNames, CompetitionsNames, CompetitionsTypes, CompetitionsCategories, SeasonsNames, ZonesNames
from ..teams.models import TeamsNames, TeamsTypes, TeamsLevels
from . import competitions
from .forms import EditSeasonsNamesForm

@competitions.route('/home', methods=['GET', 'POST'])
def index():
    competitionsNames = {}
    competitionsNamesList = CompetitionsNames.query.order_by(CompetitionsNames.id).all()
    competitionsNames['list'] = competitionsNamesList
    competitionsNames['model'] = 'CompetitionsNames'
    # for competition in competitionsList:
    #     print(competition.id, competition.name)


    competitionsTypes = {}
    competitionsTypesList = CompetitionsTypes.query.order_by(CompetitionsTypes.id).all()
    competitionsTypes['list'] = competitionsTypesList
    competitionsTypes['model'] = 'CompetitionsTypes'
    # for competitionTypes in competitionsTypes:
    #     print(competitionTypes.id, competitionTypes.name)

    competitionsCategories = {}
    competitionsCategoriesList = CompetitionsCategories.query.order_by(CompetitionsCategories.id).all()
    competitionsCategories['list'] = competitionsCategoriesList
    competitionsCategories['model'] = 'CompetitionsCategories'
    # for competition in competitionsCategories:
    #     print(competition.id, competition.name)


    videosGamesNames = {}
    videosGamesNamesList = VideosGamesNames.query.order_by(VideosGamesNames.id).all()
    videosGamesNames['list'] = videosGamesNamesList
    videosGamesNames['model'] = 'VideosGamesNames'
    # for season in seasonsNames:
    #     print(season.id, season.name)

    seasonsNames = {}
    seasonsNamesList = SeasonsNames.query.order_by(SeasonsNames.id).all()
    seasonsNames['list'] = seasonsNamesList
    seasonsNames['model'] = 'SeasonsNames'
    # for season in seasonsNames:
    #     print(season.id, season.name)

    zonesNames = {}
    zonesNamesList = ZonesNames.query.order_by(ZonesNames.id).all()
    zonesNames['list'] = zonesNamesList
    zonesNames['model'] = 'ZonesNames'
    # for zone in zonesNames:
    #     print(zone.id, zone.name)

    countriesNames = {}
    countriesNamesList = CountriesNames.query.order_by(CountriesNames.id).all()
    countriesNames['list'] = countriesNamesList
    countriesNames['model'] = 'CountriesNames'
    # for country in countries:
    #     print(country.id, country.name, country.abbreviation, country.zones_id)

    teamsTypes = {}
    teamsTypesList = TeamsTypes.query.order_by(TeamsTypes.id).all()
    teamsTypes['list'] = teamsTypesList
    teamsTypes['model'] = 'TeamsTypes'
    # for teamType in teamsTypes:
    #     print(teamType.id, teamType.type)

    teamsNames = {}
    teamsNamesList = TeamsNames.query.order_by(TeamsNames.id).all()
    teamsNames['list'] = teamsNamesList
    teamsNames['model'] = 'TeamsNames'

    teamsLevels = {}
    teamsLevelsList = TeamsLevels.query.order_by(TeamsLevels.id).all()
    teamsLevels['list'] = teamsLevelsList
    teamsLevels['model'] = 'TeamsLevels'


    # for team in teamsNames:
    #     print(team.id, team.game_name, team.real_name, team.abbreviation, team.teams_types_id, team.countries_id, team.zones_id)
    return render_template('competitions/index.html',
        competitionsNames=competitionsNames,
        competitionsTypes = competitionsTypes,
        competitionsCategories = competitionsCategories,
        videosGamesNames = videosGamesNames,
        seasonsNames = seasonsNames,
        zonesNames = zonesNames,
        countriesNames = countriesNames,
        teamsTypes = teamsTypes,
        teamsNames = teamsNames,
        teamsLevels = teamsLevels
    )


@competitions.route('/seasons-names-list')
def seasons_names_list():
    seasonsNamesList = SeasonsNames.query.all()
    return render_template('competitions/seasons_names_list.html', seasonsNamesList=seasonsNamesList)

@competitions.route('/seasons-names-edit/<int:id>', methods=['GET', 'POST'])
# @login_required
# @admin_required
def seasons_names_edit(id):
    seasonsNames = SeasonsNames.query.get_or_404(id)
    form = EditSeasonsNamesForm()
    if form.validate_on_submit():
        seasonsNames.name = form.name.data
        db.session.add(seasonsNames)
        db.session.commit()
        flash('SeasonsNames has been updated.')
        return redirect(url_for('.seasons_names_list', seasonsNames=seasonsNames))
    form.name.data = seasonsNames.name 

    return render_template('competitions/seasons_names_edit.html', form=form, seasonsNames=seasonsNames)
