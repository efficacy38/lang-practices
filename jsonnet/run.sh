#!/usr/bin/env bash

if [[ $# -gt 1 ]]; then
  echo "only accept 1 jsonnet file" > /dev/stderr
  exit
fi

jsonnet "$1" | jq -C | less -R

