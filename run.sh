#!/bin/sh

#build image
docker build -t feedback-img .

#run container
docker run -it --publish 8000:8000 -v "$(PWD)/feedback":/var/www/feedback feedback-img
