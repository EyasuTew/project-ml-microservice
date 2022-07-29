#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=eyasutew/project-ml-microservice

# Step 2:  
# Authenticate & tag
docker login --username=eyasutew
docker tag 9a2b3da60458 eyasutew/project-ml-microservice:v.01
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push eyasutew1/project-ml-microservice