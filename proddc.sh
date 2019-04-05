#!/bin/bash

set -e

PROJECT_NAME=build-test-prod
ENV=prod
GIT_HASH=$(git rev-parse HEAD)

docker-compose -p ${PROJECT_NAME} -f docker-compose.yml "$@"