from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request
from .. import db
from .models import Teams, Zones, TeamsTypes, Countries, Competitions, CompetitionsTypes, CompetitionsCategories, Seasons
from . import teams

@teams.route('/home', methods=['GET', 'POST'])
def index():

    competitions = {}
    competitionsList = Competitions.query.order_by(Competitions.id).all()
    competitions['list'] = competitionsList
    competitions['model'] = 'Competitions'
    # for competition in competitionsList:
    #     print(competition.id, competition.game_name, competition.real_name, competition.teams_types_id, competition.competitions_types_id, competition.competitions_categories_id, competition.countries_id, competition.zones_id)


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


    seasons = {}
    seasonsList = Seasons.query.order_by(Seasons.id).all()
    seasons['list'] = seasonsList
    seasons['model'] = 'Seasons'
    # for season in seasons:
    #     print(season.id, season.name)

    zones = {}
    zonesList = Zones.query.order_by(Zones.id).all()
    zones['list'] = zonesList
    zones['model'] = 'Zones'
    # for zone in zones:
    #     print(zone.id, zone.name)

    countries = {}
    countriesList = Countries.query.order_by(Countries.id).all()
    countries['list'] = countriesList
    countries['model'] = 'Countries'

    # for country in countries:
    #     print(country.id, country.name, country.abbreviation, country.zones_id)

    teamsTypes = {}
    teamsTypesList = TeamsTypes.query.order_by(TeamsTypes.id).all()
    teamsTypes['list'] = teamsTypesList
    teamsTypes['model'] = 'TeamsTypes'
    # for teamType in teamsTypes:
    #     print(teamType.id, teamType.type)

    teams = {}
    teamsList = Teams.query.order_by(Teams.id).all()
    teams['list'] = teamsList
    teams['model'] = 'Teams'
    # for team in teams:
    #     print(team.id, team.game_name, team.real_name, team.abbreviation, team.teams_types_id, team.countries_id, team.zones_id)

    # competitionsSeasons = CompetitionsSeasons.query.order_by(CompetitionsSeasons.id).all()
    # for competition in competitionsSeasons:
    #     print(competition.id, competition.seasons_id, competition.competitions_id)

    # userList = users.query.join(friendships, users.id==friendships.user_id).add_columns(users.userId, users.name, users.email, friends.userId, friendId).filter(users.id == friendships.friend_id).filter(friendships.user_id == userID).paginate(page, 1, False)
    # userList = CompetitionsTypes.query.join(friendships, users.id==friendships.user_id).add_columns(users.userId, users.name, users.email, friends.userId, friendId).filter(users.id == friendships.friend_id).filter(friendships.user_id == userID).paginate(page, 1, False)


    return render_template('teams/index.html',
        zones=zones,
        teamsTypes = teamsTypes,
        countries = countries,
        teams = teams,
        competitions = competitions,
        # competitionsSeasons = competitionsSeasons,
        competitionsCategories = competitionsCategories,
        seasons = seasons,
        competitionsTypes = competitionsTypes
    )


@teams.route('/teams/filters', methods=['POST'])
def teamsFilters():
    data = json.loads(request.data)
    print(data)
    for k,v in data.items():
        if(k == 'Competitions'):
            CompetitionsId = v
        elif(k == 'CompetitionsTypes'):
            CompetitionsTypesId = v
        elif(k == 'Seasons'):
            SeasonsId = v
        print(k,v)

    if(CompetitionsTypesId == -1):
        competitionsTypesFilter = 'CompetitionsTypes.id != CompetitionsTypesId'
    else:
        competitionsTypesFilter = 'CompetitionsTypes.id == CompetitionsTypesId'

    q = Competitions.query \
    .join(CompetitionsTypes, CompetitionsTypes.id==Competitions.competitions_types_id) \
    .add_columns(Competitions.game_name, Competitions.real_name) \
    .filter(eval(competitionsTypesFilter)) \
    .all()

    print('### Q:')
    for item in q:
        print(item.game_name, item.real_name)
    print('')


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

@teams.route('/team/<int:id>', methods=['GET', 'POST'])
def team(id):


    post = Teams.query.get_or_404(id)


    return render_template('index.html', posts=[post])

    # form = TeamForm()
    # if form.validate_on_submit():
    #       comment = Comment(body=form.body.data,
    #                       post=post,
    #                       author=current_user._get_current_object())
    #       db.session.add(comment)
    #       db.session.commit()
    #       flash('Your comment has been published.')
    #       return redirect(url_for('.post', id=post.id, page=-1))


    # return render_template('post.html', posts=[post], form=form, comments=comments, pagination=pagination)

