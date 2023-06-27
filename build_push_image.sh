#!/bin/sh

# build image from Dockerfile
docker build -t item-app:v1 .
# show list docker images locally
docker images
# change image name with namespace for docker hub
# docker tag item-app:v1 $USER_DOCKER_HUB/item-app:v1
# change image name with namespace for github container registry
docker tag item-app:v1 ghcr.io/$GITHUB_USER/item-app:v1
# login to docker hub
# echo $PASSWORD_DOCKER_HUB | docker login -u $USER_DOCKER_HUB --password-stdin
# login to github container registry
echo $GITHUB_ACCESS_TOKEN | docker login ghcr.io -u $GITHUB_USER --password-stdin
# push image to docker hub
# docker push $USER_DOCKER_HUB/item-app:v1
# push image to github container registry (github package)
docker push ghcr.io/$GITHUB_USER/item-app:v1