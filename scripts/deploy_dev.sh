#!/bin/bash

echo "Deploying data to the Dev environment..."

psql -h $DEV_DB_HOST -U $DB_USER -d $DB_NAME -f db/deploy.sql
