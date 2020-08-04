#!/bin/sh

echo "Deploying files to server"
# echo ssh ${SSH_USER} -p 18765
# rsync -avP -e 'ssh -p 18765' build/ user@domain:/path/
# ssh user@domain -p 18765
echo "[${SG_DOMAIN}]:${SG_PORT} ecdsa-sha2-nistp256 ${SG_KEY}" >> ${HOME}/.ssh/known_hosts
less ${HOME}/.ssh/known_hosts
ssh ${SG_USER}@${SG_DOMAIN} -p 18765
# rsync -avP -e 'ssh -p 18765' build/ ${SSH_USER}:${SG_HOME}/domains/ppoc.dev/


echo "Deployment complete"