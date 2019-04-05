#!/bin/bash

echo "DEV COMMAND..."

nginx &

while read -n 1 ; do
  echo "File changed, copying to index.html"
  cat src.txt > /usr/share/nginx/html/index.html
done < <(tail -fn+0 src.txt 2> /dev/null)

