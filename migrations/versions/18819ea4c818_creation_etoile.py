"""creation etoile

Revision ID: 18819ea4c818
Revises: 22cc993544d9
Create Date: 2018-08-03 09:55:58.488385

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '18819ea4c818'
down_revision = '22cc993544d9'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('videos_games_names',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=64), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('competitions',
    sa.Column('videos_games_names_id', sa.Integer(), nullable=False),
    sa.Column('seasons_names_id', sa.Integer(), nullable=False),
    sa.Column('zones_names_id', sa.Integer(), nullable=False),
    sa.Column('countries_names_id', sa.Integer(), nullable=False),
    sa.Column('competitions_types_id', sa.Integer(), nullable=False),
    sa.Column('competitions_categories_id', sa.Integer(), nullable=False),
    sa.Column('competitions_names_id', sa.Integer(), nullable=False),
    sa.Column('teams_names_id', sa.Integer(), nullable=False),
    sa.Column('teams_types_id', sa.Integer(), nullable=False),
    sa.Column('teams_levels_id', sa.Integer(), nullable=False),
    sa.ForeignKeyConstraint(['competitions_categories_id'], ['competitions_categories.id'], ),
    sa.ForeignKeyConstraint(['competitions_names_id'], ['competitions_names.id'], ),
    sa.ForeignKeyConstraint(['competitions_types_id'], ['competitions_types.id'], ),
    sa.ForeignKeyConstraint(['countries_names_id'], ['countries_names.id'], ),
    sa.ForeignKeyConstraint(['seasons_names_id'], ['seasons_names.id'], ),
    sa.ForeignKeyConstraint(['teams_levels_id'], ['teams_levels.id'], ),
    sa.ForeignKeyConstraint(['teams_names_id'], ['teams_names.id'], ),
    sa.ForeignKeyConstraint(['teams_types_id'], ['teams_types.id'], ),
    sa.ForeignKeyConstraint(['videos_games_names_id'], ['videos_games_names.id'], ),
    sa.ForeignKeyConstraint(['zones_names_id'], ['zones_names.id'], ),
    sa.PrimaryKeyConstraint('videos_games_names_id', 'seasons_names_id', 'zones_names_id', 'countries_names_id', 'competitions_types_id', 'competitions_categories_id', 'competitions_names_id', 'teams_names_id', 'teams_types_id', 'teams_levels_id')
    )
    op.drop_table('videos_games')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('videos_games',
    sa.Column('id', mysql.INTEGER(display_width=11), nullable=False),
    sa.Column('name', mysql.VARCHAR(length=64), nullable=True),
    sa.PrimaryKeyConstraint('id'),
    mysql_default_charset='latin1',
    mysql_engine='InnoDB'
    )
    op.drop_table('competitions')
    op.drop_table('videos_games_names')
    # ### end Alembic commands ###