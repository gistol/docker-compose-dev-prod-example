#!/bin/bash

set -e

PROJECT_NAME=build-test-prod

export ENV=prod
export GIT_HASH=$(git rev-parse HEAD || echo "prod-latest")

docker-compose -p ${PROJECT_NAME} -f docker-compose.yml "$@"