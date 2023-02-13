#!/bin/bash 

OUTPUT_DIR=texturecomponents-sorted

for group in `cat data/groups.txt`; do 
	if [ ! -d texturecomponents-sorted/$group ]; then 
		mkdir texturecomponents-sorted/$group
	fi
	for piece in `cat data/pieces.txt`; do 
		for type in `cat data/$piece-types.txt`; do 
			FILE=${group}_${piece}_${type}.png
			# echo $FILE;
			SRC=`grep ${FILE} files.txt`
			if [ $? -eq 0 ]; then
				cp -v $SRC texturecomponents-sorted/${group}/
			fi
		done
	done
done 
