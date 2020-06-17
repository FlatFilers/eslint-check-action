#!/bin/sh

env

cd $GITHUB_WORKSPACE
cd $WORKING_DIRECTORY

if [ ! -d "node_modules" ]; then
    echo "Repo dependencies not installed. Installing..."
    yarn install
fi

cd "/eslint_check_action" || exit

node "/eslint_check_action/dist/index.js"
