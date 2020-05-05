FROM ubuntu
COPY . /app
ARG DEBIAN_FRONTEND=noninteractive
RUN /app/docker/docker-scripts/image/build-base.sh
RUN /app/docker/docker-scripts/image/build-emsdk.sh

CMD ["/bin/bash", "/app/docker/docker-scripts/container/run.sh"]
