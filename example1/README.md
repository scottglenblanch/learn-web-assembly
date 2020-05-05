# Learn Web Assembly Example 1

### Dependencies
- [Docker](https://docs.docker.com/get-docker/)

### Run Code
1. `/bin/bash <path to example1>/scripts/run.sh`
2. In browser open [localhost:8080](http:localhost:8080)



### Code Explained
- src: C file compiled via [emsdk](https://github.com/emscripten-core/emsdk)
- build: where the web code is served from
- docker: 
    - Dockerfile
        - uses Ubuntu
    - image build scripts 
    - container run scripts
- scripts: used to run the program from the 'host' machine, aka your machine

### Tutorials
- https://webassembly.org/getting-started/developers-guide/
