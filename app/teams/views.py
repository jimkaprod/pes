from flask import render_template, session, redirect, url_for, current_app
from .. import db
from .models import Teams
from . import teams

@teams.route('/home', methods=['GET', 'POST'])
def index():
    return render_template('teams/index.html')

@teams.route('/team/<int:id>', methods=['GET', 'POST'])
def team(id):
    print('toto')
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

