#!/usr/bin/env bash
PROJECT_NAME=$1
cd ..
docker-compose -p $PROJECT_NAME stop
docker-compose -p $PROJECT_NAME down -v
