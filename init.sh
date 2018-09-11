#!/usr/bin/env bash
if [ -z "$1" ]; then
    echo "Enter your project name"
	exit 0;
else
    DEVDIR=$(dirname "$0")
	cd $DEVDIR

	if [ "$2" = "master" ]; then
		git checkout master
		git pull origin master
	else
		git fetch --tags
		LATEST_TAG=$(git describe --tags $(git rev-list --tags --max-count=1))
		echo "Updating to the latest version $LATEST_TAG"
		git checkout $LATEST_TAG

		if [ -f "../.env" ]; then
			source ../.env
			if [ $DEV_VERSION = $LATEST_TAG ] && [ $PROJECT_NAME = $1 ]; then
				echo "The dev & deploy environment is at the latest version $LATEST_TAG and the project name is the same."
				echo "No need for an update."
				exit 0;
			fi
		fi
	fi

    echo "Initializing Project $1!"

	cp config.yml.sample ../config.yml
	sed -i "s/PROJECT_NAME:.*/PROJECT_NAME: $1/" ../config.yml
	sed -i "s/DEV_VERSION:.*/DEV_VERSION: $LATEST_TAG/" ../config.yml

    if [ ! -d "../src" ]; then
        echo "Creating src dir."
        mkdir ../src
    fi

    cp Makefile.sample ../Makefile
    sed -i '1iDEV_DIR='$DEVDIR ../Makefile
    sed -i '1iPROJECT_NAME='$1 ../Makefile
fi