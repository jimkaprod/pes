from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from sqlalchemy import desc
from ..decorators import admin_required
from .. import db

from . import data
from .teams_models import TeamsNames, TeamsTypes, TeamsLevels
from .competitions_models import VideosGamesNames, CountriesNames, Competitions, CompetitionsNames, CompetitionsTypes, CompetitionsCategories, SeasonsNames, ZonesNames
from .competitions_forms import EditSeasonsNamesForm, EditCompetitionsForm, EditCompetitionsCategoriesForm, EditCompetitionsNamesForm, EditCompetitionsTypesForm, EditCountriesNamesForm, EditVideosGamesNamesForm, EditZonesNamesForm

###################
#Competitions
###################
@data.route('/competitions/competitions-add', methods=['GET', 'POST'])
def competitions_add():
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
        flash('Competitions has been added.')
        return redirect(url_for('.competitions_list'))
    return render_template('data/competitions_edit.html', form=form)

@data.route('/competitions/competitions-delete/<int:id>', methods=['GET', 'POST'])
def competitions_delete(id):
    item = Competitions.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('Competitions has been deleted.')
    return redirect(url_for('.competitions_list'))


@data.route('/competitions/competitions-list', methods=['GET', 'POST'])
def competitions_list():
    list = Competitions.query \
    .add_columns(Competitions.id.label('id')) \
    .join(VideosGamesNames, VideosGamesNames.id==Competitions.videos_games_names_id) \
    .add_columns(VideosGamesNames.id.label('videos_games_id'), VideosGamesNames.name.label('videos_games_names')) \
    .join(SeasonsNames, SeasonsNames.id==Competitions.seasons_names_id) \
    .add_columns(SeasonsNames.id.label('seasons_id'), SeasonsNames.name.label('seasons_names')) \
    .join(ZonesNames, ZonesNames.id==Competitions.zones_names_id) \
    .add_columns(ZonesNames.id.label('zones_id'), ZonesNames.name.label('zones_names')) \
    .join(CountriesNames, CountriesNames.id==Competitions.countries_names_id) \
    .add_columns(CountriesNames.id.label('countries_id'), CountriesNames.name.label('countries_names')) \
    .join(CompetitionsNames, CompetitionsNames.id==Competitions.competitions_names_id) \
    .add_columns(CompetitionsNames.id.label('competitions_names_id'), CompetitionsNames.name.label('competitions_names_name')) \
    .join(CompetitionsTypes, CompetitionsTypes.id==Competitions.competitions_types_id) \
    .add_columns(CompetitionsTypes.id.label('competitions_types_id'), CompetitionsTypes.name.label('competitions_types_name')) \
    .join(CompetitionsCategories, CompetitionsCategories.id==Competitions.competitions_categories_id) \
    .add_columns(CompetitionsCategories.id.label('competitions_categories_id'), CompetitionsCategories.name.label('competitions_categories_name')) \
    .join(TeamsNames, TeamsNames.id==Competitions.teams_names_id) \
    .add_columns(TeamsNames.id.label('teams_names_id'), TeamsNames.real_name.label('teams_names_real_name'), TeamsNames.fifa_name.label('teams_names_fifa_name'), TeamsNames.pes_name.label('teams_names_pes_name')) \
    .join(TeamsTypes, TeamsTypes.id==Competitions.teams_types_id) \
    .add_columns(TeamsTypes.id.label('teams_types_id'), TeamsTypes.type.label('teams_types_type')) \
    .join(TeamsLevels, TeamsLevels.id==Competitions.teams_levels_id) \
    .add_columns(TeamsLevels.id.label('teams_levels_id'), TeamsLevels.level.label('teams_levels_level')) \
    .order_by(desc(Competitions.id)).all()

    return render_template('data/competitions_list.html', list=list)

@data.route('/competitions/competitions-edit/<int:id>', methods=['GET', 'POST'])
def competitions_edit(id):
    fields = Competitions.query.get_or_404(id)
    form = EditCompetitionsForm()
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
        flash('Competitions has been updated.')
        return redirect(url_for('.competitions_list', fields=fields))

    # form.videosGames.data = fields.videos_games_names_id
    form.process()
    return render_template('data/competitions_edit.html', form=form, fields=fields)

###################
#VideosGamesNames
###################
@data.route('/competitions/videos-games-names-add', methods=['GET', 'POST'])
def videos_games_names_add():
    form = EditVideosGamesNamesForm()
    if form.validate_on_submit():
        item = VideosGamesNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('VideosGamesNames has been added.')
        return redirect(url_for('.videos_games_names_list'))
    return render_template('data/videos_games_names_edit.html', form=form)

@data.route('/competitions/videos-games-names-delete/<int:id>', methods=['GET', 'POST'])
def videos_games_names_delete(id):
    item = VideosGamesNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('VideosGamesNames has been deleted.')
    return redirect(url_for('.videos_games_names_list'))

@data.route('/competitions/videos-games-names-list')
def videos_games_names_list():
    list = VideosGamesNames.query.all()
    return render_template('data/videos_games_names_list.html', list=list)

@data.route('/competitions/videos-games-names-edit/<int:id>', methods=['GET', 'POST'])
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
#ZonesNames
###################
@data.route('/competitions/zones-names-add', methods=['GET', 'POST'])
def zones_names_add():
    form = EditZonesNamesForm()
    if form.validate_on_submit():
        item = ZonesNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('ZonesNames has been added.')
        return redirect(url_for('.zones_names_list'))
    return render_template('data/zones_names_edit.html', form=form)

@data.route('/competitions/zones-names-delete/<int:id>', methods=['GET', 'POST'])
def zones_names_delete(id):
    item = ZonesNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('ZonesNames has been deleted.')
    return redirect(url_for('.zones_names_list'))

@data.route('/competitions/zones-names-list')
def zones_names_list():
    list = ZonesNames.query.all()
    return render_template('data/zones_names_list.html', list=list)

@data.route('/competitions/zones-names-edit/<int:id>', methods=['GET', 'POST'])
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
#SeasonsNames
###################
@data.route('/competitions/seasons-names-add', methods=['GET', 'POST'])
def seasons_names_add():
    form = EditSeasonsNamesForm()
    if form.validate_on_submit():
        item = SeasonsNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('SeasonsNames has been added.')
        return redirect(url_for('.seasons_names_list'))
    return render_template('data/seasons_names_edit.html', form=form)

@data.route('/competitions/seasons-names-delete/<int:id>', methods=['GET', 'POST'])
def seasons_names_delete(id):
    item = SeasonsNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('SeasonsNames has been deleted.')
    return redirect(url_for('.seasons_names_list'))

@data.route('/competitions/seasons-names-list')
def seasons_names_list():
    list = SeasonsNames.query.all()
    return render_template('data/seasons_names_list.html', list=list)

@data.route('/competitions/seasons-names-edit/<int:id>', methods=['GET', 'POST'])
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
#CountriesNames
###################
@data.route('/competitions/countries-names-add', methods=['GET', 'POST'])
def countries_names_add():
    form = EditCountriesNamesForm()
    if form.validate_on_submit():
        item = CountriesNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('CountriesNames has been added.')
        return redirect(url_for('.countries_names_list'))
    return render_template('data/countries_names_edit.html', form=form)

@data.route('/competitions/countries-names-delete/<int:id>', methods=['GET', 'POST'])
def countries_names_delete(id):
    item = CountriesNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('CountriesNames has been deleted.')
    return redirect(url_for('.countries_names_list'))

@data.route('/competitions/countries-names-list')
def countries_names_list():
    list = CountriesNames.query.all()
    return render_template('data/countries_names_list.html', list=list)

@data.route('/competitions/countries-names-edit/<int:id>', methods=['GET', 'POST'])
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
###################
#CompetitionsNames
###################
@data.route('/competitions/competitions-names-add', methods=['GET', 'POST'])
def competitions_names_add():
    form = EditCompetitionsNamesForm()
    if form.validate_on_submit():
        item = CompetitionsNames(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('CompetitionsNames has been added.')
        return redirect(url_for('.competitions_names_list'))
    return render_template('data/competitions_names_edit.html', form=form)

@data.route('/competitions/competitions-names-delete/<int:id>', methods=['GET', 'POST'])
def competitions_names_delete(id):
    item = CompetitionsNames.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('CompetitionsNames has been deleted.')
    return redirect(url_for('.competitions_names_list'))

@data.route('/competitions/competitions-names-list')
def competitions_names_list():
    list = CompetitionsNames.query.all()
    return render_template('data/competitions_names_list.html', list=list)

@data.route('/competitions/competitions-names-edit/<int:id>', methods=['GET', 'POST'])
def competitions_names_edit(id):
    fields = CompetitionsNames.query.get_or_404(id)
    form = EditCompetitionsNamesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('CompetitionsNames has been updated.')
        return redirect(url_for('.competitions_names_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/competitions_names_edit.html', form=form, fields=fields)
###################
#CompetitionsCategories
###################
@data.route('/competitions/competitions-categories-add', methods=['GET', 'POST'])
def competitions_categories_add():
    form = EditCompetitionsCategoriesForm()
    if form.validate_on_submit():
        item = CompetitionsCategories(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('CompetitionsCategories has been added.')
        return redirect(url_for('.competitions_categories_list'))
    return render_template('data/competitions_categories_edit.html', form=form)

@data.route('/competitions/competitions-categories-delete/<int:id>', methods=['GET', 'POST'])
def competitions_categories_delete(id):
    item = CompetitionsCategories.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('CompetitionsCategories has been deleted.')
    return redirect(url_for('.competitions_categories_list'))

@data.route('/competitions/competitions-categories-list')
def competitions_categories_list():
    list = CompetitionsCategories.query.all()
    return render_template('data/competitions_categories_list.html', list=list)

@data.route('/competitions/competitions-categories-edit/<int:id>', methods=['GET', 'POST'])
def competitions_categories_edit(id):
    fields = CompetitionsCategories.query.get_or_404(id)
    form = EditCompetitionsCategoriesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('SeasonsNames has been updated.')
        return redirect(url_for('.competitions_categories_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/competitions_categories_edit.html', form=form, fields=fields)
###################
#CompetitionsTypes
###################
@data.route('/competitions/competitions-types-add', methods=['GET', 'POST'])
def competitions_types_add():
    form = EditCompetitionsTypesForm()
    if form.validate_on_submit():
        item = CompetitionsTypes(name=form.name.data)
        db.session.add(item)
        db.session.commit()
        flash('CompetitionsTypes has been added.')
        return redirect(url_for('.competitions_types_list'))
    return render_template('data/competitions_types_edit.html', form=form)

@data.route('/competitions/competitions-types-delete/<int:id>', methods=['GET', 'POST'])
def competitions_types_delete(id):
    item = CompetitionsTypes.query.get_or_404(id)
    db.session.delete(item)
    db.session.commit()
    flash('CompetitionsTypes has been deleted.')
    return redirect(url_for('.competitions_types_list'))


@data.route('/competitions/competitions-types-list')
def competitions_types_list():
    list = CompetitionsTypes.query.all()
    return render_template('data/competitions_types_list.html', list=list)

@data.route('/competitions/competitions-types-edit/<int:id>', methods=['GET', 'POST'])
def competitions_types_edit(id):
    fields = CompetitionsTypes.query.get_or_404(id)
    form = EditCompetitionsTypesForm()
    if form.validate_on_submit():
        fields.name = form.name.data
        db.session.add(fields)
        db.session.commit()
        flash('CompetitionsTypes has been updated.')
        return redirect(url_for('.competitions_types_list', fields=fields))
    form.name.data = fields.name
    return render_template('data/competitions_types_edit.html', form=form, fields=fields)


