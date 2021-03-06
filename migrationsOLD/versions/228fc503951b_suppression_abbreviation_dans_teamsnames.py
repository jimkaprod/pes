"""suppression abbreviation dans TeamsNames

Revision ID: 228fc503951b
Revises: 8d7e5e56f6b4
Create Date: 2018-08-03 11:13:58.701177

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '228fc503951b'
down_revision = '8d7e5e56f6b4'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('teams_names', 'abbreviation')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('teams_names', sa.Column('abbreviation', mysql.VARCHAR(length=64), nullable=True))
    # ### end Alembic commands ###
