#!/bin/ash
set -e

until $(curl --output /dev/null --silent --head --fail http://business-service:8084/purchase/commit); do
  printf 'Waiting for the service ...\n'
  sleep 10
done

exec artillery "$@"
