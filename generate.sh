#!/usr/bin/env bash

docker run --rm \
    -v "$(pwd):/local" \
    openapitools/openapi-generator-cli \
    generate -i "/local/dnagenotek-sofia.json" -g python -o /local --package-name sofia
