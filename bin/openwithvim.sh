#!/bin/bash

#EDITOR=vim

if [[ -z $1 ]]; then
	echo "Missing filepath."
elif [[ -n $1 ]]; then
	FILE="$1"
	SRC=$(wslpath "$1")
	echo "$SRC"
fi

