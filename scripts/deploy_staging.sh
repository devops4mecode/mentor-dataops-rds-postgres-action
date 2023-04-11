#!/bin/bash

echo "Deploying data to the Staging environment..."

psql -h $STAGING_DB_HOST -U $DB_USER -d $DB_NAME -f db/deploy.sql
