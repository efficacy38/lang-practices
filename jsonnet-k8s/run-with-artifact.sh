#!/usr/bin/env bash

if [[ $# -gt 1 ]]; then
  echo "only accept 1 jsonnet file" > /dev/stderr
  exit
fi

rm -rf manifests/*

# Calling gojsontoyaml is optional, but we would like to generate yaml, not json
jsonnet -J vendor -m manifests "$1" | xargs -I{} sh -c 'cat {} | json2yaml > {}.yaml' -- {}

# Make sure to remove json files
find manifests -type f ! -name '*.yaml' -delete
