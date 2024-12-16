#!/bin/bash
SERVICE_NAME="app"
IMAGE_NAME="new"
TAG="latest"
docker-compose build $SERVICE_NAME
IMAGE_ID=$(docker images --filter=reference="$(SERVICE_NAME}*" --format "{{.ID}}" | head -n 1)
docker tag $IMAGE_ID $IMAGE_NAME:$TAG
