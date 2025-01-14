#!/bin/bash 

DIRECTORY=./shared
DONE_FILE_NAME=migration.done

# Check if the directory exists, if not create it
if [ ! -d "$DIRECTORY" ]; then
  echo "Creating $DIRECTORY"
  mkdir -p "$DIRECTORY"
fi

echo "Checking if $DIRECTORY/$DONE_FILE_NAME exists"
if [ ! -f "$DIRECTORY/$DONE_FILE_NAME" ]; then
  echo "Starting MySQL database migration"
  mysql -h db -p"$SQL_ROOT_PASSWORD" "$SQL_DATABASE" < zbedatw_movies.sql
  touch "$DIRECTORY/$DONE_FILE_NAME"
fi