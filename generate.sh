#!/usr/bin/env bash

set -euo pipefail

# Pin the generator so regenerations are reproducible; bump deliberately.
GENERATOR_IMAGE="openapitools/openapi-generator-cli:v7.26.0"

# Package version tracks the API version in the spec.
API_VERSION=$(grep -E '"version":\s*"' dnagenotek-sofia.json | head -1 | sed 's/.*"version":\s*"\([^"]*\)".*/\1/')

if [ -z "$API_VERSION" ]; then
    echo "❌ Could not extract version from dnagenotek-sofia.json" >&2
    exit 1
fi

# DNAgenotek uses just "2", expand to semantic versioning (e.g., "2" -> "2.0.0")
if [[ "$API_VERSION" =~ ^[0-9]+$ ]]; then
    PACKAGE_VERSION="${API_VERSION}.0.0"
else
    PACKAGE_VERSION="$API_VERSION"
fi

echo "Generating sofia $PACKAGE_VERSION (spec version $API_VERSION) with $GENERATOR_IMAGE"

# disallowAdditionalPropertiesIfNotPresent=false: follow the OpenAPI/JSON Schema
# default (objects are open), so unknown fields from the API are kept in
# additional_properties instead of being silently dropped.
docker run --rm \
    -v "$(pwd):/local" \
    "$GENERATOR_IMAGE" \
    generate -i "/local/dnagenotek-sofia.json" -g python -o /local \
    --package-name sofia \
    --git-user-id everygene \
    --git-repo-id dnagenotek-python \
    --additional-properties="packageVersion=${PACKAGE_VERSION},packageUrl=https://github.com/everygene/dnagenotek-python,buildSystem=hatchling,disallowAdditionalPropertiesIfNotPresent=false"
