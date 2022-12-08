#!/bin/bash
if [ -z "${2}" ]; then
  echo "Usage: ${0} remote_name remote_url"
  exit
fi
set -o xtrace
git remote add ${1} ${2}
git push --force ${1} "master"
git push --force --prune ${1} --all
git push --force --prune ${1} --tags
git push --force --prune ${1} refs/notes/*
