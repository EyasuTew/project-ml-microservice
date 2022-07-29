#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=eyasutew/ml-microservice:v.01

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment project-ml-microservice-first --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/project-ml-microservice-first 8000:80




#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="eyasutew/ml-microservice"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlmicroservice\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=mlmicroservice

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlmicroserviceapi 8000:80
#log container outputs
kubectl log --follow mlmicroservice