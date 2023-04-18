#!/bin/bash

mkdir /deployment/.ssh
echo "$PRIVATE_KEY" > /deployment/.ssh/id_rsa # works even if key is not rsa kind
chmod 0600 /deployment/.ssh/id_rsa

if [ -z "${HOST_FINGERPRINT}" ]; then
    echo ">> No public ssh fingerprint found, man-in-the-middle protection disabled!"
    ssh-keyscan -H -p ${PORT} ${HOST} > /deployment/.ssh/known_hosts
else
    echo ">> Public ssh fingerprint found, man-in-the-middle protection enabled."
    echo "${HOST_FINGERPRINT}" > /deployment/.ssh/known_hosts
fi

# Execute the command
ssh -o StrictHostKeyChecking=yes "${USER}@${HOST}" -p ${PORT} ${COMMAND}
