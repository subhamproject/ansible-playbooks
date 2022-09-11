#!/bin/bash

: ${1?Firt paramter is not passed}
A=$1
B=$2
C=$3

if [ $# -ne 3 ];then
     echo -e "the script takes three argument but $# are found"
     exit 5
fi
