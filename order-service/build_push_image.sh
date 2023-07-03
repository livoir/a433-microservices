#!/bin/sh

# build image from Dockerfile
docker build -t ghcr.io/$GITHUB_USER/order:v1 .
# login to github container registry
echo $GITHUB_ACCESS_TOKEN | docker login ghcr.io -u $GITHUB_USER --password-stdin
# push image to github container registry (github package)
docker push ghcr.io/$GITHUB_USER/order:v1