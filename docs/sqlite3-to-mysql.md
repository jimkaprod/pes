Il est assez aisé de convertir une base SQLite pour MySQL/MariaDB. J'inspire le contenu de ce poste de cet article : http://fabianpeter.de/cloud/owncloud-migrating-from-sqlite-to-mysql/ écrit pour ownCloud mais qui peut fonctionner pour d'autres cas de migration bien sûr.

On commence par exporter le contenu de la base SQLite dans un fichier dump.sql :

sqlite3 database.sqlite3 .dump > dump.sql

On effectue ensuite automatiquement les modifications de syntaxe nécessaires pour que MySQL/MariaDB s'y retrouve à l'aide d'un script trouvé ici dont le contenu est rappelé plus bas pour archivage :

cat dump.sql | python sqlite3-to-mysql.py > nouveau-sql-pour-mariadb.sql

