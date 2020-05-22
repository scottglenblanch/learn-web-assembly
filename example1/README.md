# Learn Web Assembly Example 1

### Dependencies
- [Docker](https://docs.docker.com/get-docker/)

### Run Code
1. ```cd path to example1
    ./scripts/run.sh```
2. In browser open [localhost:8080](http:localhost:8080)

### Code Explained
- `src`: source code that gets compiled
    - source code is in C
- `build`: where the web code is served from
- `docker`: all things Docker for this project
    - *Dockerfile*: used to create Docker image
        - uses Ubuntu as Operating System
        - runs scripts *build-base.sh* and *build-emsdk.sh*
    - `image` directory
        - contains build scripts for Docker image
        - *build-base.sh* builds the base image needed
        - *build-emsdk* builds [emsdk](https://github.com/emscripten-core/emsdk)
    - `container` directory
        - contains Docker container scripts which...
            - compile code in `src` using [emsdk](https://github.com/emscripten-core/emsdk)
            - ...and put that compiled pieces in the `build` directory
- `scripts`: scripts to run in 'host' machine, aka your machine

### Tutorials
- https://webassembly.org/getting-started/developers-guide/
