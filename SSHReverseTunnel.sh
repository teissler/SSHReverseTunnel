#!/bin/bash

. /data/SSHReverseTunnel/SSHReverseTunnel.conf

/usr/bin/ssh -NTC \
-o "ServerAliveInterval 60" \
-o "ServerAliveCountMax 3" \
-o ExitOnForwardFailure=yes \
-o StrictHostKeyChecking=no \
-i /home/root/.ssh/id_ed25519 \
-p ${REMOTE_PORT} \
-l ${REMOTE_USER} \
-R ${REMOTE_LISTENING_PORT}:localhost:22 \
${REMOTE_HOST}

# vim: ts=3 sts=3 sw=3 et nu list
