db="Checkpoint2-dbase.sqlite3"

#Add Database
sqlite3 $db < test/AutoTrackDBCreate.sql

#Empty & Populate
sqlite3 $db < test/empty-tables.sql
sqlite3 $db < test/load-db.sql

#Test Checkpoint2-script.sql file.
sqlite3 $db < Checkpoint2-script.sql