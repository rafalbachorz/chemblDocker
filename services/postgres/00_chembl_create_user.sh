#!/bin/bash
set -e 

POSTGRES="psql -U postgres"

# create a chembl role with proper password
echo "Creating database role: chembl"
$POSTGRES <<-EOSQL
CREATE USER chembl WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    PASSWORD '$CHEMBL_PASSWORD';
EOSQL
