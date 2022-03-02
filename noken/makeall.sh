#!/usr/bin/bash
array=($(find . -maxdepth 1 -type d))

for obj in "${array[@]}"; do
  if [ $obj = "." ]; then
    continue
  fi
  echo $obj

  cd $obj
  jq -s add *.json > all.json
  cd ../

done
