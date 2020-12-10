#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=prakhyavanaparthy/project5:project5

# Step 2:  
# Authenticate & tag
echo "06bc36bf258b and project5: $dockerpath"
docker login
docker tag project5 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
