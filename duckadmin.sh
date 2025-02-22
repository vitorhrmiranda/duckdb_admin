#!/usr/bin/bash

if [[ "$#" -ne 1 ]]; then
  echo "error: exactly one parameter required." >&2
  exit 1
fi

filePath="$1"
if [[ ! -e "$filePath" ]]; then
  echo "error: file '$filePath' does not exist." >&2
  exit 1
fi

echo "$filePath" | entr -n -r bash -c 'clear && duckdb :memory: < "$1"' _ "$filePath"
