#!/bin/bash
# Docker Container Cleanup
docker ps -aq --filter "status=exited" | xargs docker rm
docker images -q --filter "dangling=true" | xargs docker rmi
echo "Docker cleanup complete."
