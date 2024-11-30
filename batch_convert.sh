#!/bin/bash

# one liner
# for f in *.@(jpeg|jpg|webp); do [ -f "$f" ] || continue; convert "$f" "${f%.*}.png"; echo "converted $f to ${f%.*}.png"; done

for f in *.@(jpeg|jpg|webp); do
    [ -f "$f" ] || continue
    convert "$f" "${f%.*}.png" 
    echo "converted $f to ${f%.*}.png"
done
