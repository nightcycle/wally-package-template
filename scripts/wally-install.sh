#!/usr/bin/env bash
set -e
ROJO_PROJECT="$1"
wally install
if [ ! -d "Packages" ]; then
  mkdir Packages
fi
rojo sourcemap "$ROJO_PROJECT" --output sourcemap.json
wally-package-types --sourcemap sourcemap.json Packages

