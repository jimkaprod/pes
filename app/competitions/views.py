from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from . import competitions
from ..decorators import admin_required
from .. import db
from ..data.competitions_models import VideosGamesNames, CountriesNames, Competitions, CompetitionsNames, CompetitionsTypes, CompetitionsCategories, SeasonsNames, ZonesNames
from ..data.teams_models import TeamsNames, TeamsTypes, TeamsLevels
from flask_sqlalchemy import get_debug_queries

@competitions.route('/home', methods=['GET', 'POST'])
def index():
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

    teamsNames = {}
    teamsNamesList = TeamsNames.query.order_by(TeamsNames.id).all()
    teamsNames['list'] = teamsNamesList
    teamsNames['model'] = 'TeamsNames'

    teamsTypes = {}
    teamsTypesList = TeamsTypes.query.order_by(TeamsTypes.id).all()
    teamsTypes['list'] = teamsTypesList
    teamsTypes['model'] = 'TeamsTypes'
    # for teamType in teamsTypes:
    #     print(teamType.id, teamType.type)

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


@competitions.route('/teams/filters', methods=['POST'])
def teamsFilters():
    data = json.loads(request.data)
    # print(data)
    for k,v in data.items():
        if(k == 'VideosGamesNames'):
            VideosGamesNamesId = v
        elif(k == 'SeasonsNames'):
            SeasonsNamesId = v
        elif(k == 'ZonesNames'):
            ZonesNamesId = v
        elif(k == 'CountriesNames'):
            CountriesNamesId = v
        elif(k == 'CompetitionsNames'):
            CompetitionsNamesId = v
        elif(k == 'CompetitionsTypes'):
            CompetitionsTypesId = v
        elif(k == 'CompetitionsCategories'):
            CompetitionsCategoriesId = v
        elif(k == 'TeamsNames'):
            TeamsNamesId = v
        elif(k == 'TeamsTypes'):
            TeamsTypesId = v
        elif(k == 'TeamsLevels'):
            TeamsLevelsId = v
        print(k,v)

    if(VideosGamesNamesId == -1):
        videosGamesNamesFilter = ''
    else:
        videosGamesNamesFilter = 'VideosGamesNames.id == VideosGamesNamesId'

    if(SeasonsNamesId == -1):
        seasonsNamesFilter = ''
    else:
        seasonsNamesFilter = 'SeasonsNames.id == SeasonsNamesId'

    if(ZonesNamesId == -1):
        zonesNamesFilter = ''
    else:
        zonesNamesFilter = 'ZonesNames.id == ZonesNamesId'

    if(CountriesNamesId == -1):
        countriesNamesFilter = ''
    else:
        countriesNamesFilter = 'CountriesNames.id == CountriesNamesId'

    if(CompetitionsNamesId == -1):
        competitionsNamesFilter = ''
    else:
        competitionsNamesFilter = 'CompetitionsNames.id == CompetitionsNamesId'

    if(CompetitionsTypesId == -1):
        competitionsTypesFilter = ''
    else:
        competitionsTypesFilter = 'CompetitionsTypes.id == CompetitionsTypesId'

    if(CompetitionsCategoriesId == -1):
        competitionsCategoriesFilter = ''
    else:
        competitionsCategoriesFilter = 'CompetitionsCategories.id == CompetitionsCategoriesId'

    if(TeamsNamesId == -1):
        teamsNamesFilter = ''
    else:
        teamsNamesFilter = 'TeamsNames.id == TeamsNamesId'

    if(TeamsTypesId == -1):
        teamsTypesFilter = ''
    else:
        teamsTypesFilter = 'TeamsTypes.id == TeamsTypesId'

    if(TeamsLevelsId == -1):
        teamsLevelsFilter = ''
    else:
        teamsLevelsFilter = 'TeamsLevels.id == TeamsLevelsId'

      # Competitions.videos_games_names_id,
      # Competitions.seasons_names_id,
      # Competitions.zones_names_id,
      # Competitions.countries_names_id,
      # Competitions.competitions_names_id,
      # Competitions.competitions_types_id,
      # Competitions.competitions_categories_id,
      # Competitions.teams_types_id,
      # Competitions.teams_levels_id,

    criteria = {}

    # If you already have a dict, there are easier ways to get a subset of its keys
    if VideosGamesNamesId != -1: criteria['videos_games_names_id'] = VideosGamesNamesId
    if SeasonsNamesId != -1: criteria['seasons_names_id'] = SeasonsNamesId
    if ZonesNamesId != -1: criteria['zones_names_id'] = ZonesNamesId
    if CountriesNamesId != -1: criteria['countries_names_id'] = CountriesNamesId
    if CompetitionsNamesId != -1: criteria['competitions_names_id'] = CompetitionsNamesId
    if CompetitionsTypesId != -1: criteria['competitions_types_id'] = CompetitionsTypesId
    if CompetitionsCategoriesId != -1: criteria['competitions_categories_id'] = CompetitionsCategoriesId
    if TeamsTypesId != -1: criteria['teams_types_id'] = TeamsTypesId
    if TeamsLevelsId != -1: criteria['teams_levels_id'] = TeamsLevelsId

    q = Competitions.query.filter_by(**criteria) \
    .join(TeamsNames, TeamsNames.id==Competitions.teams_names_id) \
    .add_columns(TeamsNames.real_name) \
    .all()

    # q = Competitions.query \
    # .filter_by(videos_games_names_id=VideosGamesNamesId) \
    # .join(TeamsNames, TeamsNames.id==Competitions.teams_names_id) \
    # .add_columns(TeamsNames.real_name) \
    # .all()

    # q = Competitions.query \
    # .join(TeamsNames, TeamsNames.id==Competitions.teams_names_id) \
    # .add_columns(
    #   Competitions.teams_names_id
    #   ) \
    # .filter(
    #   eval(videosGamesNamesFilter),
    #   eval(seasonsNamesFilter),
    #   eval(zonesNamesFilter),
    #   eval(countriesNamesFilter),
    #   eval(competitionsNamesFilter),
    #   eval(competitionsTypesFilter),
    #   eval(competitionsCategoriesFilter),
    #   eval(teamsTypesFilter),
    #   eval(teamsLevelsFilter))\
    # .all()

    # info = get_debug_queries()[1]
    # print(str(q))

    print('### Q:')
    for item in q:
      print(
        item.real_name
        # item.videos_games_names_id,
        # item.seasons_names_id,
        # item.zones_names_id,
        # item.countries_names_id,
        # item.competitions_names_id,
        # item.competitions_types_id,
        # item.competitions_categories_id,
        # item.teams_types_id,
        # item.teams_levels_id
      )
    print('')
    print(get_debug_queries()[2])
    # queries = list(get_debug_queries())
    # query_str = ''
    # total_duration = 0.0
    # for q in queries:
    #   print(q)
    #   total_duration += q.duration
    #   stmt = str(q.statement % q.parameters).replace('\n', '\n       ')
    #   query_str += 'Query: {0}\nDuration: {1}ms\n\n'.format(stmt, round(q.duration * 1000, 2))

    # print('=' * 80)
    # print(' SQL Queries - {0} Queries Executed in {1}ms'.format(len(queries), round(total_duration * 1000, 2)))
    # print('=' * 80)
    # print(query_str.rstrip('\n'))
    # print('=' * 80 + '\n')

    # q1 = CompetitionsTypes.query.join(Competitions, CompetitionsTypes.id==Competitions.competitions_types_id) \
    # .filter(CompetitionsTypes.name == 'championship') \
    # .all()


    # print('### Q1:')
    # for item in q1:
    #     print(item.name)
    # print('')

    # print('### Q2:')
    # for item in q2:
    #     print(item.game_name,item.real_name)
    # print('')



    return jsonify(data)
    # i = data.get('id')
    # m = data.get('model')

    # val = jsonify(
    #     id=i,
    #     model=m
    # )

    # return val

def sql_debug(response):
  queries = list(get_debug_queries())
  query_str = ''
  total_duration = 0.0
  for q in queries:
    total_duration += q.duration
    stmt = str(q.statement % q.parameters).replace('\n', '\n       ')
    query_str += 'Query: {0}\nDuration: {1}ms\n\n'.format(stmt, round(q.duration * 1000, 2))

  print('=' * 80)
  print(' SQL Queries - {0} Queries Executed in {1}ms'.format(len(queries), round(total_duration * 1000, 2)))
  print('=' * 80)
  print(query_str.rstrip('\n'))
  print('=' * 80 + '\n')

  return response

