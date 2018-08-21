"""initialisation

Revision ID: 409b89487e69
Revises: 
Create Date: 2018-07-27 11:10:05.706278

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '409b89487e69'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('roles',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=64), nullable=True),
    sa.Column('default', sa.Boolean(), nullable=True),
    sa.Column('permissions', sa.Integer(), nullable=True),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('name')
    )
    op.create_index(op.f('ix_roles_default'), 'roles', ['default'], unique=False)
    op.create_table('teams_type',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('type', sa.String(length=64), nullable=True),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('type')
    )
    op.create_table('zones',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=64), nullable=True),
    sa.Column('abbreviation', sa.String(length=3), nullable=True),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('abbreviation'),
    sa.UniqueConstraint('name')
    )
    op.create_table('countries',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(length=64), nullable=True),
    sa.Column('abbreviation', sa.String(length=3), nullable=True),
    sa.Column('zone_id', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['zone_id'], ['zones.id'], ),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('abbreviation'),
    sa.UniqueConstraint('name')
    )
    op.create_table('users',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('email', sa.String(length=64), nullable=True),
    sa.Column('username', sa.String(length=64), nullable=True),
    sa.Column('password_hash', sa.String(length=128), nullable=True),
    sa.Column('role_id', sa.Integer(), nullable=True),
    sa.Column('confirmed', sa.Boolean(), nullable=True),
    sa.Column('name', sa.String(length=64), nullable=True),
    sa.Column('location', sa.String(length=64), nullable=True),
    sa.Column('about_me', sa.Text(), nullable=True),
    sa.Column('member_since', sa.DateTime(), nullable=True),
    sa.Column('last_seen', sa.DateTime(), nullable=True),
    sa.Column('avatar_hash', sa.String(length=32), nullable=True),
    sa.ForeignKeyConstraint(['role_id'], ['roles.id'], ),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_index(op.f('ix_users_email'), 'users', ['email'], unique=True)
    op.create_index(op.f('ix_users_username'), 'users', ['username'], unique=True)
    op.create_table('game_teams',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('teams_type_id', sa.Integer(), nullable=True),
    sa.Column('zones_id', sa.Integer(), nullable=True),
    sa.Column('countries_id', sa.Integer(), nullable=True),
    sa.Column('real_name', sa.String(length=64), nullable=True),
    sa.Column('game_name', sa.String(length=64), nullable=True),
    sa.Column('abbreviation', sa.String(length=64), nullable=True),
    sa.ForeignKeyConstraint(['countries_id'], ['countries.id'], ),
    sa.ForeignKeyConstraint(['teams_type_id'], ['teams_type.id'], ),
    sa.ForeignKeyConstraint(['zones_id'], ['zones.id'], ),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('abbreviation'),
    sa.UniqueConstraint('game_name'),
    sa.UniqueConstraint('real_name')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('game_teams')
    op.drop_index(op.f('ix_users_username'), table_name='users')
    op.drop_index(op.f('ix_users_email'), table_name='users')
    op.drop_table('users')
    op.drop_table('countries')
    op.drop_table('zones')
    op.drop_table('teams_type')
    op.drop_index(op.f('ix_roles_default'), table_name='roles')
    op.drop_table('roles')
    # ### end Alembic commands ###