"""suppression de la relation seasons_names et tournaments

Revision ID: 1e3824d4afc2
Revises: 3aaea2f3ec13
Create Date: 2018-09-07 08:22:12.058799

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '1e3824d4afc2'
down_revision = '3aaea2f3ec13'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint('tournaments_ibfk_5', 'tournaments', type_='foreignkey')
    op.drop_column('tournaments', 'seasons_names_id')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('tournaments', sa.Column('seasons_names_id', mysql.INTEGER(display_width=11), autoincrement=False, nullable=False))
    op.create_foreign_key('tournaments_ibfk_5', 'tournaments', 'seasons_names', ['seasons_names_id'], ['id'])
    # ### end Alembic commands ###