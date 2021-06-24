#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="ferhab1994/ml-prediction"
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ~/my_password.txt | docker login --username ferhab1994 --password-stdin
docker tag prediction:1.0 $dockerpath:1.0

# Step 3:
# Push image to a docker repository
docker push $dockerpath:1.0
