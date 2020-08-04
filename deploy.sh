#!/bin/sh

echo "Deploying files to server"
echo ${TRAVIS_REPO_SLUG}
# rsync -avP -e 'ssh -p 18765' build/ user@domain:/path/
# ssh user@domain -p 18765

echo "Deployment complete"