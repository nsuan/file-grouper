#!/bin/bash
find "${1}" -type f -name "*.png"  > files.txt 

sed 's#^.*/##' files.txt | grep -E "boot|pant|chest|sleeve|glove"  | sed  -e 's/_boot_.._.*.png//'  -e 's/_pant_.._.*.png//' -e 's/_chest_.._.*.png//' -e 's/_sleeve_.._.*.png//'  -e 's/_glove_.._.*.png//'  |
 sort  |
 uniq > data/groups.txt
