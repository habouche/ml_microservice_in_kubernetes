#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="ferhab1994/ml-prediction"

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run flaskprediction --image=$dockerpath --port=80
#docker login
kubectl run flaskprediction --image=$dockerpath:1.0 --port=80 --labels app=flaskprediction


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward flaskprediction 8000:80

