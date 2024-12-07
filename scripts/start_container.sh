#!/bin/bash

# Log in to Amazon ECR
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 474668411047.dkr.ecr.ap-south-1.amazonaws.com

# Pull the latest Docker image
docker pull 474668411047.dkr.ecr.ap-south-1.amazonaws.com/simple-python-app:latest

# Stop any running container with the same name
docker stop simple-python-app || true
docker rm simple-python-app || true

# Run the Docker container
docker run -d --name simple-python-app -p 5000:5000 474668411047.dkr.ecr.ap-south-1.amazonaws.com/simple-python-app:latest
