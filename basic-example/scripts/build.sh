#!/bin/bash
set -e
set -u
set -o pipefail

docker pull floydcraft/cardano-py-slim:latest
docker build --tag "floydcraft/cardano-py-basic-example:latest" .
