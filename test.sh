#!/bin/bash

for file in *.pdf; do 
    page_number=$(exiftool -'PageCount' "$file" | tr ': ' '\n'  | tail -n 1)
    js=$(pdfinfo "$file" | grep JavaScript | tr ': ' '\n' | tail -n 1)

    if [ $page_number -lt 15 ] || [ $page_number -gt 17 ]; then
        echo -e "\u001b[33m$file has \u001b[31m$page_number\u001b[33m pages."
    fi

    if [ $js == 'yes' ]; then 
        echo -e "\u001b[31m$file contains JavaScript."
    fi
done
