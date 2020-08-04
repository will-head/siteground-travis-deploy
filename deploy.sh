#!/bin/sh

echo "Switching to branch master"
# git checkout master

echo "Building app"
# npm run build

echo "Deploying files to server"
# rsync -avP -e 'ssh -p 18765' build/ user@domain:/path/
# ssh user@domain -p 18765

echo "Deployment complete"