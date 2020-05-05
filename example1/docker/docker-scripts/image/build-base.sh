#!/bin/bash

apt update
apt install -y \
  build-essential zlib1g-dev libncurses5-dev \
  libgdbm-dev libnss3-dev libssl-dev \
  libreadline-dev libffi-dev wget \
  software-properties-common \
  git
apt update
add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt install -y python3.7
