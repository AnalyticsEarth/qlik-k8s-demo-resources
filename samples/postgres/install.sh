sleep 10
psql -d postgresdb -U postgresadmin -a -f /demodata/createdb.sql
psql -d postgresdb -U postgresadmin -a -f /demodata/world.sql
psql -d postgresdb -U postgresadmin -a -f /demodata/user.sql
