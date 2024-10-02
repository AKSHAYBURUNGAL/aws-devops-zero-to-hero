#!/bin/bash
set -e

# Stop the running container
containerID=$(docker ps -q --filter ancestor=admin335/simple-python-flask-app)
if [ -n "$containerID" ]; then
  docker rm -f $containerID
  echo "Stopped and removed container: $containerID"
else
  echo "No running container found for admin335/simple-python-flask-app."
fi
