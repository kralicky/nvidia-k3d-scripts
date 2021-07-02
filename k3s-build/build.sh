#!/bin/bash
set -e
cd $(dirname $0)

if [ ! -d k3s ]; then
  git clone --depth 1 https://github.com/rancher/k3s.git -b v1.21.2+k3s1
  cd k3s
  make
  cd ..
fi
docker build -t k3s-gpu:v1.21.2-k3s1 .
