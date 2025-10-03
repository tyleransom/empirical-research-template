#!/bin/bash

mkdir -p src/data-cleaning/data-source-{1,2,3} \
         src/{descriptives,estimation,post-estimation} \
         research-notes \
         presentations/venue-{1,2} \
         paper/references \
         exhibits/{figures,tables} \
         data/{raw,cleaned}/data-source-{1,2,3}

touch src/main.sh

find . -type d -empty -not -path '*/data/raw/*' -exec sh -c 'echo "" > "$1/.gitkeep"' _ {} \;

for i in {1..3}; do
    echo "# Data Source $i" > data/raw/data-source-$i/README.md
done
