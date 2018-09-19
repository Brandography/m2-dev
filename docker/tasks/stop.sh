#!/usr/bin/env bash
PROJECT_NAME=$1
cd ..
docker-compose -p $1 stop
