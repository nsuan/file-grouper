#!/bin/bash 

. scripts/make_groups.sh "${1}"
. scripts/makearmortypes.sh `basename "${1}"`
. scripts/sort.sh `basename "${1}"`
