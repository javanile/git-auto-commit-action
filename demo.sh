#!/usr/bin/env bash

main () {
  echo "Hello World!"
}

deep_run () {
  set -x
  output="$("$@")"
  set +x
}

run () {
  deep_run "$@" 2> a.txt

  echo "================="
  echo "${output}"
  echo "================="
}

run main





