#!/usr/bin/env bash

if [[ $# -gt 1 ]]; then
  echo "only accept 1 jsonnet file" > /dev/stderr
  exit
fi

jsonnet -J vendor $1 | json2yaml | yq -C | less -R
