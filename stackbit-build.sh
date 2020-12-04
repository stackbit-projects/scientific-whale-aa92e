#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fcaa92efc7f96cfeb0a3b7c

echo "stackbit-build.sh: finished build"
