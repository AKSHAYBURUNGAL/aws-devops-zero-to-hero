#!/bin/bash
set -e

# Stop the running container
containerid='docker ps | awk -F " " '{print$1}''
rm -f $containerid
