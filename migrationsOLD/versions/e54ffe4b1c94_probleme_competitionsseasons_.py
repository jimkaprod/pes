"""probleme competitionsSeasons suppression id

Revision ID: e54ffe4b1c94
Revises: 0024d3e9a88c
Create Date: 2018-07-31 16:36:46.789473

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = 'e54ffe4b1c94'
down_revision = '0024d3e9a88c'
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
