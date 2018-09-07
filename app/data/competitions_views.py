from flask import render_template, session, redirect, url_for, current_app, jsonify, json, request, flash
from flask_login import login_required, current_user
from sqlalchemy import desc, asc
from ..decorators import admin_required
from .. import db

from . import data
from .competitions_models import Competitions, CompetitionsNames, CompetitionsTypes, CompetitionsCategories
from .competitions_forms import EditCompetitionsForm, EditCompetitionsCategoriesForm, EditCompetitionsNamesForm, EditCompetitionsTypesForm

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
        flash('CompetitionsCategories has been updated.')
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

###################
#Competitions
###################
@data.route('/competitions/competitions-add', methods=['GET', 'POST'])
def competitions_add():
    form = EditCompetitionsForm()

    form.competitionsTypes.choices = [(row.id, row.name) for row in CompetitionsTypes.query.all()]
    form.competitionsTypes.default = "Selectionner"

    form.competitionsCategories.choices = [(row.id, row.name) for row in CompetitionsCategories.query.all()]
    form.competitionsCategories.default = "Selectionner"

    form.competitionsNames.choices = [(row.id, row.name) for row in CompetitionsNames.query.all()]
    form.competitionsNames.default = "Selectionner"

    if form.validate_on_submit():
        item = Competitions(
            competitions_types_id = form.competitionsTypes.data,
            competitions_categories_id = form.competitionsCategories.data,
            competitions_names_id = form.competitionsNames.data
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


@data.route('/competitions/competitions-list')
def competitions_list():
    list = Competitions.query \
        .add_columns(Competitions.id.label('id')) \
        .join(CompetitionsNames, CompetitionsNames.id==Competitions.competitions_names_id) \
        .add_columns(CompetitionsNames.name.label('names')) \
        .join(CompetitionsCategories, CompetitionsCategories.id==Competitions.competitions_categories_id) \
        .add_columns(CompetitionsCategories.name.label('categories')) \
        .join(CompetitionsTypes, CompetitionsTypes.id==Competitions.competitions_types_id) \
        .add_columns(CompetitionsTypes.name.label('types')) \
        .order_by(asc(Competitions.id)).all()


    return render_template('data/competitions_list.html', list=list)

@data.route('/competitions/competitions-edit/<int:id>', methods=['GET', 'POST'])
def competitions_edit(id):
    fields = Competitions.query.get_or_404(id)
    form = EditCompetitionsForm()

    form.competitionsTypes.choices = [(row.id, row.name) for row in CompetitionsTypes.query.all()]
    form.competitionsTypes.default = fields.competitions_types_id

    form.competitionsCategories.choices = [(row.id, row.name) for row in CompetitionsCategories.query.all()]
    form.competitionsCategories.default = fields.competitions_categories_id

    form.competitionsNames.choices = [(row.id, row.name) for row in CompetitionsNames.query.all()]
    form.competitionsNames.default = fields.competitions_names_id

    if form.validate_on_submit():
        fields.competitions_types_id = form.competitionsTypes.data
        fields.competitions_categories_id = form.competitionsCategories.data
        fields.competitions_names_id = form.competitionsNames.data
        db.session.add(fields)
        db.session.commit()
        flash('Competitions has been updated.')
        return redirect(url_for('.competitions_list', fields=fields))

    form.process()
    return render_template('data/competitions_edit.html', form=form, fields=fields)
