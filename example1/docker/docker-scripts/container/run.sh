#!/bin/bash

cd /emsdk
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh

cd /app/src
emcc /app/src/hello.c -o /app/build/index.html
emrun --no_browser --port 8080 /app/build
