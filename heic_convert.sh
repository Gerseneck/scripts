#!/bin/bash

for f in $(find . -type f -name "*.HEIC"); do convert "$f" "${f%.*}.png"; echo "converted $f to ${f%.*}.png"; rm "$f"; echo "removed $f"; done

find . -mindepth 2 -type f -name "*.png" -exec mv -i -- {} . \;
