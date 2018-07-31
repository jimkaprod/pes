from flask import render_template, session, redirect, url_for, current_app
from .. import db
from .models import Teams, Zones, TeamsTypes, Countries, Competitions, CompetitionsTypes, CompetitionsCategories, Seasons
from . import teams

@teams.route('/home', methods=['GET', 'POST'])
def index():

    zones = Zones.query.order_by(Zones.id).all()
    # for zone in zones:
    #     print(zone.id, zone.name)

    teamsTypes = TeamsTypes.query.order_by(TeamsTypes.id).all()
    # for teamType in teamsTypes:
    #     print(teamType.id, teamType.type)

    countries = Countries.query.order_by(Countries.id).all()
    # for country in countries:
    #     print(country.id, country.name, country.abbreviation, country.zones_id)

    teams = Teams.query.order_by(Teams.id).all()
    # for team in teams:
    #     print(team.id, team.game_name, team.real_name, team.abbreviation, team.teams_types_id, team.countries_id, team.zones_id)

    competitions = Competitions.query.order_by(Competitions.id).all()
    # for competition in competitions:
    #     print(competition.id, competition.game_name, competition.real_name, competition.teams_types_id, competition.competitions_types_id, competition.competitions_categories_id, competition.countries_id, competition.zones_id)

    # competitionsSeasons = CompetitionsSeasons.query.order_by(CompetitionsSeasons.id).all()
    # for competition in competitionsSeasons:
    #     print(competition.id, competition.seasons_id, competition.competitions_id)

    competitionsCategories = CompetitionsCategories.query.order_by(CompetitionsCategories.id).all()
    # for competition in competitionsCategories:
    #     print(competition.id, competition.name)

    seasons = Seasons.query.order_by(Seasons.id).all()
    for season in seasons:
        print(season.id, season.name)

    # userList = users.query.join(friendships, users.id==friendships.user_id).add_columns(users.userId, users.name, users.email, friends.userId, friendId).filter(users.id == friendships.friend_id).filter(friendships.user_id == userID).paginate(page, 1, False)
    # userList = CompetitionsTypes.query.join(friendships, users.id==friendships.user_id).add_columns(users.userId, users.name, users.email, friends.userId, friendId).filter(users.id == friendships.friend_id).filter(friendships.user_id == userID).paginate(page, 1, False)

    q1 = CompetitionsTypes.query.join(Competitions, CompetitionsTypes.id==Competitions.competitions_types_id) \
    .filter(CompetitionsTypes.name == 'championship') \
    .all()

    q2 = Competitions.query.join(CompetitionsTypes, CompetitionsTypes.id==Competitions.competitions_types_id) \
    .filter(CompetitionsTypes.name == 'championship') \
    .all()

    print('### Q1:')
    for item in q1:
        print(item.name)
    print('')

    print('### Q2:')
    for item in q2:
        print(item.game_name,item.real_name)
    print('')

    return render_template('teams/index.html',
        zones=zones,
        teamsTypes = teamsTypes,
        countries = countries,
        teams = teams,
        competitions = competitions,
        # competitionsSeasons = competitionsSeasons,
        competitionsCategories = competitionsCategories,
        seasons = seasons
    )

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

