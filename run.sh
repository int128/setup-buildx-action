#!/bin/bash
set -o pipefail
set -eux

binary_url="https://github.com/docker/buildx/releases/download/${BUILDX_VERSION}/buildx-${BUILDX_VERSION}.linux-amd64"

mkdir -vp ~/.docker/cli-plugins
curl -sfSL -o ~/.docker/cli-plugins/docker-buildx "$binary_url"
chmod +x ~/.docker/cli-plugins/docker-buildx
docker buildx create --use
docker buildx version
docker buildx inspect
