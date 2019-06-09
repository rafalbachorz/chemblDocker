#!/bin/bash
set -e 

POSTGRES="psql --username postgres"

# create database for the ChEMBL database
echo "Creating database: chembl_25"
$POSTGRES <<EOSQL
CREATE DATABASE chembl_25 OWNER chembl;
EOSQL
