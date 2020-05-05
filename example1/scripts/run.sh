#!/bin/bash

# https://www.ostricher.com/2014/10/the-right-way-to-get-the-directory-of-a-bash-script/
SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_PATH="$(cd "${SCRIPT_PATH}"; cd ..; pwd)";
DOCKER_FILE_PATH="${PROJECT_PATH}/docker/Dockerfile"
IMAGE_NAME="learn-web-assembly-example1"

# build docker image
docker build -t "${IMAGE_NAME}" -f "${DOCKER_FILE_PATH}" "${PROJECT_PATH}"

# run docker container from image
docker run -it \
  -v "${PROJECT_PATH}/src":/app/src \
  -v "${PROJECT_PATH}/build":/app/build \
  -p 8080:8080 "${IMAGE_NAME}"
