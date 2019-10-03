#!/bin/bash

docker run -d --name mongo-db \
    -e MONGO_INITDB_ROOT_USERNAME=admin \
    -e MONGO_INITDB_ROOT_PASSWORD=123456 \
    -v ${PWD}/data-directory:/data/db \
    mongo