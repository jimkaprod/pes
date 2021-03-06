"""creation des tables competitions et modification de certains champs

Revision ID: 2c2bb4292eff
Revises: 3de979d9ad2d
Create Date: 2018-07-27 15:23:10.448401

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '2c2bb4292eff'
down_revision = '3de979d9ad2d'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('competitions_categories',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=64), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('competitions_types',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=64), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('seasons',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=64), nullable=True),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('teams_types',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('type', sa.String(length=64), nullable=True),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('type')
    )
    op.create_table('competitions',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('game_name', sa.String(length=64), nullable=True),
    sa.Column('real_name', sa.String(length=64), nullable=True),
    sa.Column('teams_types_id', sa.Integer(), nullable=True),
    sa.Column('competitions_types_id', sa.Integer(), nullable=True),
    sa.Column('competitions_categories_id', sa.Integer(), nullable=True),
    sa.Column('countries_id', sa.Integer(), nullable=True),
    sa.Column('zones_id', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['competitions_categories_id'], ['competitions_categories.id'], ),
    sa.ForeignKeyConstraint(['competitions_types_id'], ['competitions_types.id'], ),
    sa.ForeignKeyConstraint(['countries_id'], ['countries.id'], ),
    sa.ForeignKeyConstraint(['teams_types_id'], ['teams_types.id'], ),
    sa.ForeignKeyConstraint(['zones_id'], ['zones.id'], ),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('competitions_seasons',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('seasons_id', sa.Integer(), nullable=True),
    sa.Column('competitions_id', sa.Integer(), nullable=True),
    sa.Column('teams_id', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['competitions_id'], ['competitions.id'], ),
    sa.ForeignKeyConstraint(['seasons_id'], ['seasons.id'], ),
    sa.ForeignKeyConstraint(['teams_id'], ['game_teams.id'], ),
    sa.PrimaryKeyConstraint('id')
    )
    op.drop_table('teams_type')
    op.add_column('countries', sa.Column('zones_id', sa.Integer(), nullable=True))
    op.drop_constraint('countries_ibfk_1', 'countries', type_='foreignkey')
    op.create_foreign_key(None, 'countries', 'zones', ['zones_id'], ['id'])
    op.drop_column('countries', 'zone_id')
    op.add_column('game_teams', sa.Column('teams_types_id', sa.Integer(), nullable=True))
    op.drop_constraint('game_teams_ibfk_2', 'game_teams', type_='foreignkey')
    op.create_foreign_key(None, 'game_teams', 'teams_types', ['teams_types_id'], ['id'])
    op.drop_column('game_teams', 'teams_type_id')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('game_teams', sa.Column('teams_type_id', mysql.INTEGER(display_width=11), autoincrement=False, nullable=True))
    op.drop_constraint(None, 'game_teams', type_='foreignkey')
    op.create_foreign_key('game_teams_ibfk_2', 'game_teams', 'teams_type', ['teams_type_id'], ['id'])
    op.drop_column('game_teams', 'teams_types_id')
    op.add_column('countries', sa.Column('zone_id', mysql.INTEGER(display_width=11), autoincrement=False, nullable=True))
    op.drop_constraint(None, 'countries', type_='foreignkey')
    op.create_foreign_key('countries_ibfk_1', 'countries', 'zones', ['zone_id'], ['id'])
    op.drop_column('countries', 'zones_id')
    op.create_table('teams_type',
    sa.Column('id', mysql.INTEGER(display_width=11), nullable=False),
    sa.Column('type', mysql.VARCHAR(length=64), nullable=True),
    sa.PrimaryKeyConstraint('id'),
    mysql_default_charset='latin1',
    mysql_engine='InnoDB'
    )
    op.drop_table('competitions_seasons')
    op.drop_table('competitions')
    op.drop_table('teams_types')
    op.drop_table('seasons')
    op.drop_table('competitions_types')
    op.drop_table('competitions_categories')
    # ### end Alembic commands ###
