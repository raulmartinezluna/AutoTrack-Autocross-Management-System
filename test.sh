db="Checkpoint2-dbase.sqlite3"

#Database must have already been created for this to work.

#Empty & Populate
sqlite3 $db < empty-tables.sql
sqlite3 $db < load-db.sql

#Test Checkpoint2-script.sql file.
sqlite3 $db < Checkpoint2-script.sql