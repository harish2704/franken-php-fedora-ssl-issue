#!/bin/bash

trap "echo 'Exiting...'; sleep 1; exit 0;" SIGTERM SIGINT SIGKILL 

# Install ca-certificates in the case of debian based image
if [[ -e /usr/bin/dpkg ]]; then
  if ! dpkg-query -s ca-certificates >/dev/null; then
    apt-get update
    apt-get install -y ca-certificates
  fi
fi

( cd /var/www/html; ./frankenphp run ) &

# Keep container alive for debugging/fixing  in case main process dies
sleep infinity &

wait
