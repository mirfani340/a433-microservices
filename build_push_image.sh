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


# /////// Ignore Bellow Code ///////
# echo "Running docker images from local"
# docker run -d --name item-app-v2 -p 8080:8080 -v app-db:/data/db item-app:v2
# # WIP
