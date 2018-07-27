"""Teams game_name et real_name pas unique

Revision ID: 3de979d9ad2d
Revises: cc90edbc57c8
Create Date: 2018-07-27 13:42:28.272313

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '3de979d9ad2d'
down_revision = 'cc90edbc57c8'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_index('game_name', table_name='game_teams')
    op.drop_index('real_name', table_name='game_teams')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_index('real_name', 'game_teams', ['real_name'], unique=True)
    op.create_index('game_name', 'game_teams', ['game_name'], unique=True)
    # ### end Alembic commands ###
