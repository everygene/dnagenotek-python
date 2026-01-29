#!/usr/bin/env bash

set -euo pipefail

# Run OpenAPI generator
docker run --rm \
    -v "$(pwd):/local" \
    openapitools/openapi-generator-cli \
    generate -i "/local/dnagenotek-sofia.json" -g python -o /local --package-name sofia

# Extract API version from spec and update pyproject.toml
# DNAgenotek uses just "2", expand to semantic versioning
API_VERSION=$(grep -E '"version":\s*"' dnagenotek-sofia.json | head -1 | sed 's/.*"version":\s*"\([^"]*\)".*/\1/')

if [ -n "$API_VERSION" ]; then
    # Expand single digit to semantic version (e.g., "2" -> "2.0.0")
    if [[ "$API_VERSION" =~ ^[0-9]+$ ]]; then
        SEMVER="${API_VERSION}.0.0"
    else
        SEMVER="$API_VERSION"
    fi
    
    echo "Syncing package version to API version: $SEMVER (from spec version $API_VERSION)"
    sed -i "s/^version = .*/version = \"$SEMVER\"/" pyproject.toml
    echo "✅ Package version updated to $SEMVER"
else
    echo "⚠️  Warning: Could not extract version from dnagenotek-sofia.json"
fi
