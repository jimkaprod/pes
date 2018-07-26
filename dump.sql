PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (
	id INTEGER NOT NULL, 
	email VARCHAR(64), 
	username VARCHAR(64), 
	password_hash VARCHAR(128), 
	role_id INTEGER, 
	confirmed BOOLEAN, 
	name VARCHAR(64), 
	location VARCHAR(64), 
	about_me TEXT, 
	member_since DATETIME, 
	last_seen DATETIME, avatar_hash VARCHAR(32), 
	PRIMARY KEY (id), 
	FOREIGN KEY(role_id) REFERENCES roles (id), 
	CHECK (confirmed IN (0, 1))
);
INSERT INTO users VALUES(1,'jm@jimkaprod.com','gegen','pbkdf2:sha256:50000$o6HQK6dP$47b755791b9542e8f68e73dbe71525d482d1b8c66b7cb5c60c669e8625be01a6',3,1,NULL,NULL,NULL,'2018-06-20 09:12:39.579212','2018-06-20 09:12:48.096799',NULL);
CREATE TABLE roles (id INTEGER NOT NULL, name VARCHAR (64), "default" BOOLEAN, permissions INTEGER, PRIMARY KEY (id), UNIQUE (name));
INSERT INTO roles VALUES(1,'User',1,7);
INSERT INTO roles VALUES(2,'Moderator',0,15);
INSERT INTO roles VALUES(3,'Administrator',0,31);
CREATE UNIQUE INDEX ix_users_email ON users (email);
CREATE UNIQUE INDEX ix_users_username ON users (username);
CREATE INDEX ix_roles_default ON roles ("default");
COMMIT;
