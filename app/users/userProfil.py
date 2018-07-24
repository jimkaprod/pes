from flask_login import current_user

class Profil():

  @staticmethod
  def getProfil(user):
    for key,v in user.__dict__.items():
      print(key,v)

