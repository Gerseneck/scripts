#!/bin/bash

for f in *.jpg; do mv "$f" "${f// /_}"; done
