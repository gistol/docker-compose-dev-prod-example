#!/bin/bash

set -e

PROJECT_NAME=build-test-dev
ENV=dev

docker-compose -p ${PROJECT_NAME} "$@"