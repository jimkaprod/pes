from werkzeug.security import generate_password_hash, check_password_hash
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer
from datetime import datetime
from flask import current_app, request
from flask_login import UserMixin, AnonymousUserMixin
from .. import db, login_manager
from ..roles.models import Role, Permission
import hashlib

class User(UserMixin, db.Model):
  # __bind_key__ = 'mysql'
  __tablename__ = 'users'
  id = db.Column(db.Integer, primary_key=True)
  email = db.Column(db.String(64), unique=True, index=True)
  username = db.Column(db.String(64), unique=True, index=True)
  password_hash = db.Column(db.String(128))
  role_id = db.Column(db.Integer, db.ForeignKey('roles.id'))
  confirmed = db.Column(db.Boolean, default=False)
  name = db.Column(db.String(64))
  location = db.Column(db.String(64))
  about_me = db.Column(db.Text())
  member_since = db.Column(db.DateTime(), default=datetime.utcnow)
  last_seen = db.Column(db.DateTime(), default=datetime.utcnow)
  avatar_hash = db.Column(db.String(32))

  def __init__(self, **kwargs):
    super(User, self).__init__(**kwargs)
    if self.role is None:
      if self.email == current_app.config['PES_ADMIN']:
        self.role = Role.query.filter_by(name='Administrator').first()
      if self.role is None:
        self.role = Role.query.filter_by(default=True).first()
    if self.email is not None and self.avatar_hash is None:
      self.avatar_hash = self.gravatar_hash()

  @login_manager.user_loader
  def load_user(user_id):
    user = User.query.get(int(user_id))
    return user

  @property
  def password(self):
    raise AttributeError('password is not a readable')

  @password.setter
  def password(self, password):
    self.password_hash = generate_password_hash(password)

  def verify_password(self, password):
    return check_password_hash(self.password_hash, password)

  def generate_confirmation_token(self, expiration=3600):
    s = Serializer(current_app.config['SECRET_KEY'], expiration)
    return s.dumps({'confirm': self.id}).decode('utf-8')

  def confirm(self, token):
    s = Serializer(current_app.config['SECRET_KEY'])
    try:
        data = s.loads(token.encode('utf-8'))
    except:
        return False
    if data.get('confirm') != self.id:
        return False
    self.confirmed = True
    db.session.add(self)
    return True

  def generate_reset_token(self, expiration=3600):
    s = Serializer(current_app.config['SECRET_KEY'], expiration)
    return s.dumps({'reset': self.id}).decode('utf-8')

  @staticmethod
  def reset_password(token, new_password):
    s = Serializer(current_app.config['SECRET_KEY'])
    try:
        data = s.loads(token.encode('utf-8'))
    except:
        return False
    user = User.query.get(data.get('reset'))
    if user is None:
        return False
    user.password = new_password
    db.session.add(user)
    return True

  def generate_email_change_token(self, new_email, expiration=3600):
    s = Serializer(current_app.config['SECRET_KEY'], expiration)
    return s.dumps(
        {'change_email': self.id, 'new_email': new_email}).decode('utf-8')

  def change_email(self, token):
    s = Serializer(current_app.config['SECRET_KEY'])
    try:
        data = s.loads(token.encode('utf-8'))
    except:
        return False
    if data.get('change_email') != self.id:
        return False
    new_email = data.get('new_email')
    if new_email is None:
        return False
    if self.query.filter_by(email=new_email).first() is not None:
        return False
    self.email = new_email
    self.avatar_hash = self.gravatar_hash()
    db.session.add(self)
    return True

  def gravatar_hash(self):
    return hashlib.md5(self.email.lower().encode('utf-8')).hexdigest()

  def gravatar(self, size=100, default='identicon', rating='g'):
    if request.is_secure:
      url = 'https://secure.gravatar.com/avatar'
    else:
      url = 'http://secure.gravatar.com/avatar'
    hash = self.avatar_hash or self.gravatar_hash()
    return '{url}/{hash}?s={size}&d={default}&r={rating}'.format(url=url, hash=hash, size=size, default=default, rating=rating)

  def can(self, perm):
    return self.role is not None and self.role.has_permission(perm)

  def is_administrator(self):
    return self.can(Permission.ADMIN)

  def ping(self):
    self.last_seen = datetime.utcnow()
    db.session.add(self)

  def __repr__(self):
    return '<User %r>' % self.username





class AnonymousUser(AnonymousUserMixin):
  def can(self, permissions):
    return False

  def is_administrator(self):
    return False

login_manager.anonymous_user = AnonymousUser
