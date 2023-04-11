#!/bin/bash

echo "Deploying data to the Production environment..."

psql -h $PROD_DB_HOST -U $DB_USER -d $DB_NAME -f db/deploy.sql
