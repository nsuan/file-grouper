#!/bin/bash

rev files.txt | cut -c 1-8 |rev  | sed 's/.png//' | sort  | uniq  > types.txt
