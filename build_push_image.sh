#!/bin/bash
# Melakukan build image
docker build -t item-app:v1 .

# Melihat Docker images yang ada
docker images

# Rename ke nama docker images yang benar
docker tag item-app:v1 ghcr.io/mirfani340/a433-microservices:v1

# Login ke GHCR
echo $DOCKER_GHCR_PASSWORD | docker login ghcr.io -u mirfani340 --password-stdin

# Push ke GHCR
docker push ghcr.io/mirfani340/a433-microservices:v1