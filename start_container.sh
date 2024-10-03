#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull 474668411047.dkr.ecr.ap-south-1.amazonaws.com/simple-python-app:latest

# Run the Docker image as a container
docker run -d -p 5000:8000 474668411047.dkr.ecr.ap-south-1.amazonaws.com/simple-python-app:latest