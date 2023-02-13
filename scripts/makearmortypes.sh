#!/bin/bash 

for i in `cat data/pieces.txt`; do grep $i files.txt | rev | cut -c 1-8 |rev  | sed 's/.png//' | sort  | uniq  > data/$i-types.txt; done
