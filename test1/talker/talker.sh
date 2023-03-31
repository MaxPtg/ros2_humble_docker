#!/bin/bash 

docker build -t ros2-docker-talker ./Dockerfile_Talker && docker run ros2-docker-talker --rm