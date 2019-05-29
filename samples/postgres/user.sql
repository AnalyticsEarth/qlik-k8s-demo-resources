
REVOKE ALL PRIVILEGES ON SCHEMA pg_temp_1, pg_toast, pg_toast_temp_1, public FROM PUBLIC;

GRANT CONNECT ON DATABASE postgresdb TO qliksense;
GRANT USAGE ON SCHEMA world_cities TO qliksense;
GRANT SELECT ON ALL TABLES IN SCHEMA world_cities TO qliksense;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA world_cities TO qliksense;
