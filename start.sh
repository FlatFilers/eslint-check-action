#!/bin/sh

cd $GITHUB_WORKSPACE

if [ -v WORKING_DIRECTORY ]; then
  cd $WORKING_DIRECTORY
fi

if [ ! -d "node_modules" ]; then
    echo "Repo dependencies not installed. Installing..."
    yarn install
fi

cd "/eslint_check_action" || exit

node "/eslint_check_action/dist/index.js"
