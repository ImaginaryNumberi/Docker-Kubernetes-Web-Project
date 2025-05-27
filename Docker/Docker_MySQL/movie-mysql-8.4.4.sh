#!/bin/bash

NETWORK_NAME="moviesq-network"

if ! docker network ls --format '{{.Name}}' | grep -wq "$NETWORK_NAME"; then
  docker network create "$NETWORK_NAME"
  echo " success $NETWORK_NAME "
else
  echo " already exit $NETWORK_NAME "
fi


docker run -d --name movie-mysql-container1.0 --network moviesq-network -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1234 -v moviesq-mysql-data:/var/lib/mysql imaginaryi/movie-mysql-8.4.4:1.0
