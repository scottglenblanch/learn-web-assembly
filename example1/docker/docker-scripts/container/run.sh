#!/bin/bash

cd /emsdk
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh

cd /app/src
emcc hello.c -o hello.html
emrun --no_browser --port 8080 .
