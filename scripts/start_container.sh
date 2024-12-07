#!/bin/bash
set -e

#connect to docker hub
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 474668411047.dkr.ecr.ap-south-1.amazonaws.com


# Pull the Docker image from Docker Hub
docker pull 474668411047.dkr.ecr.ap-south-1.amazonaws.com/simple-python-app

# Run the Docker image as a container
docker run -d -p 5000:5000 474668411047.dkr.ecr.ap-south-1.amazonaws.com/simple-python-app
