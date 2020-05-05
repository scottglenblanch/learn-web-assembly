# Learn Web Assembly Example 1

### Dependencies
- [Docker](https://docs.docker.com/get-docker/)

### Run Code
1. `/bin/bash <path to example1>/scripts/run.sh`
2. In browser open [localhost:8080](http:localhost:8080)

### Code Explained
- `src`: source code that gets compiled
    - source code is in C
- `build`: where the web code is served from
- `docker`: all things Docker for this project
    - Dockerfile: used to create Docker image
        - uses Ubuntu
    - `image` directory
        - contains build scripts for Docker image
    - `container` directory
        - contains scripts to run in container
        - compiles source using [emsdk](https://github.com/emscripten-core/emsdk)
        - puts compiled code into the `build` directory
- `scripts`: used to run the program from the 'host' machine, aka your machine

### Tutorials
- https://webassembly.org/getting-started/developers-guide/
