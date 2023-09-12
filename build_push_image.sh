#!/bin/bash
# Melakukan build image
docker build -t item-app:v1 .

# Melihat Docker images yang ada
docker images

# Rename ke nama docker images yang benar
docker tag item-db:v1 muhammadirfani/item-db:v1

# Login ke docker hub
docker login -u muhammadirfani

# Push ke docker hub
docker push muhammadirfani/item-db:v1



echo "Running docker images from local"
docker run -d --name item-app-v2 -p 8080:8080 -v app-db:/data/db item-app:v2
# WIP
