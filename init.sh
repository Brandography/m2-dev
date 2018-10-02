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
		LATEST_TAG="master"
	else
		git fetch --tags
		LATEST_TAG=$(git describe --tags $(git rev-list --tags --max-count=1))
		echo "Updating to the latest version $LATEST_TAG"
		git checkout $LATEST_TAG

		if [ -f "../config.yml" ]; then
			DEV_VERSION=$(grep -A3 'dev_version:' ../config.yml | head -n1 | cut -c 18-)
			PROJECT_NAME=$(grep -A3 'name:' ../config.yml | head -n1 | cut -c 11-)

			if [ $DEV_VERSION = $LATEST_TAG ] && [ $PROJECT_NAME = $1 ]; then
				echo "The dev & deploy environment is at the latest version $LATEST_TAG and the project name is the same."
				echo "No need for an update."
				exit 0;
			fi
		fi
	fi

    echo "Initializing Project $1!"

	if [ ! -f "../config.yml" ]; then
		cp config-sample.yml ../config.yml
	fi
    if [ ! -f "../config-secret.yml" ]; then
		cp config-secret-sample.yml ../config-secret.yml
	fi
	sed -i "s/name:.*/name: $1/" ../config.yml
	sed -i "s/dev_version:.*/dev_version: $LATEST_TAG/" ../config.yml

    if [ ! -d "../src" ]; then
        echo "Creating src dir."
        mkdir ../src
    fi

    cp .gitignore-sample ../.gitignore

    cp Makefile.sample ../Makefile
    sed -i '1iDEV_DIR='$DEVDIR ../Makefile
    sed -i '1iPROJECT_NAME='$1 ../Makefile
fi
