#!/bin/bash 

docker build -t ros2-docker-talker . && docker run ros2-docker-talker --rm