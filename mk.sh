#!/bin/sh
docker build -t succade .
ID=$(docker create succade:latest)
docker cp $ID:succade/bin/succade ./succade

