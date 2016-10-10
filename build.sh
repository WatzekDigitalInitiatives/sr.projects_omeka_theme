#!/bin/bash

# build the image, including metadata in env vars
docker build --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
    --build-arg VCS_REF=`git rev-parse --short HEAD` \
    -t watzek/srprojects .
