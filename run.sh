#!/bin/bash
set -o pipefail
set -eux

binary_url="https://github.com/docker/buildx/releases/download/${BUILDX_VERSION}/buildx-${BUILDX_VERSION}.linux-amd64"

mkdir -vp ~/.docker/cli-plugins
curl -sfSL -o ~/.docker/cli-plugins/docker-buildx "$binary_url"
chmod +x ~/.docker/cli-plugins/docker-buildx

# https://github.com/docker/buildx/blob/master/docs/reference/buildx_create.md
buildx_args=('--use')
if [[ $BUILDX_DRIVER_OPTS ]]; then
  buildx_args+=('--driver-opt' "$BUILDX_DRIVER_OPTS")
fi
docker buildx create "${buildx_args[@]}"

docker buildx version
docker buildx inspect
