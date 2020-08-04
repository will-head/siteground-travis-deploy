#!/bin/sh

echo "Deploying files to server"
echo ssh ${SSH_USER} -p 18765
# rsync -avP -e 'ssh -p 18765' build/ user@domain:/path/
# ssh user@domain -p 18765

echo "Deployment complete"