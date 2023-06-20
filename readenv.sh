#!/bin/bash

# Load environment variables from .env file
set -o allexport
source .env
set +o allexport

# for each line in .env file set the environment variable
for line in $(cat .env); do
  # if line is not empty and does not start with #
  if [[ ! -z $line ]] && [[ ! $line == '#'* ]]; then
    # split line by = sign
    IFS='=' read -ra parts <<< "$line"
    # set environment variable
    export ${parts[0]}=${parts[1]}
  fi
done