"""creation de l'association seasons-teams-competitions

Revision ID: 8ef2a8decd5f
Revises: 68d310964a6f
Create Date: 2018-07-31 15:15:26.474037

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '8ef2a8decd5f'
down_revision = '68d310964a6f'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('competitions_seasons', 'id')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('competitions_seasons', sa.Column('id', mysql.INTEGER(display_width=11), nullable=False))
    # ### end Alembic commands ###
