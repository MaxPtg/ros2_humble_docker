#!/bin/bash 

docker build -t ros2-docker-listener ./Dockerfile_Listener && docker run ros2-docker-listener --rm