#!/bin/bash
# Docker entrypoint is a Dockerfile directive or 
# instruction that is used to specify the executable which should run when a container is started from a Docker image.
chmod +x /app/wait-for-it.sh

/bin/bash /app/wait-for-it.sh $MYSQL_HOST:$MYSQL_PORT -t 300 -- npm start
