#!/bin/bash

for f in *.pdf; do mkdir "${f%.*}/"; pdfimages -all "$f" "${f%.*}/"; echo "Extracted images from $f"; done
