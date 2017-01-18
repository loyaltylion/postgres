#!/bin/bash
psql template1 -U $POSTGRES_USER --dbname $POSTGRES_DB -c 'create extension json_enhancements;' && \
psql template1 -U $POSTGRES_USER --dbname $POSTGRES_DB -c "CREATE EXTENSION temporal_tables" && \
psql template1 -U $POSTGRES_USER --dbname $POSTGRES_DB -c "GRANT ALL ON FUNCTION versioning() TO $POSTGRES_USER" && \
psql template1 -U $POSTGRES_USER --dbname $POSTGRES_DB -c 'CREATE EXTENSION "uuid-ossp" schema pg_catalog;' && \
psql template1 -U $POSTGRES_USER --dbname $POSTGRES_DB -c 'CREATE EXTENSION IF NOT EXISTS "pg_trgm"' && \
psql template1 -U $POSTGRES_USER --dbname $POSTGRES_DB -c 'CREATE EXTENSION IF NOT EXISTS amqp'

