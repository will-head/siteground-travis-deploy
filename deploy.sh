#!/bin/sh

echo "Deploying files to server"
echo "[${SG_DOMAIN}]:${SG_PORT} ecdsa-sha2-nistp256 ${SG_KEY}" >> ${HOME}/.ssh/known_hosts
ssh ${SG_USER}@${SG_DOMAIN} -p ${SG_PORT}
# rsync -avP -e 'ssh -p ${SG_PORT}' build/ ${SG_USER}@${SG_DOMAIN}:/home/${SG_USER}/domains/ppoc.dev/
echo "Deployment complete"