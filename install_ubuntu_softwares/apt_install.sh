#!/bin/bash

LIST_DIR="`pwd`/list/"

function usage() {
    echo "Usage: apt_install <list>"
    echo "  list: A softwares directory with softwares in the list file"
}

function install() {
    echo "soft: $1"
    soft=$1

}

function install_by_file() {
    echo "file: $1"
    file=$1

    cat $file | while read line; do
        # Skip the blank and comment line
        line=`echo "$line" | grep -q -E "^#|^\s*$" || echo "$line"`
        if [ ! $line == "" ]; then
            install $line
        fi
    done 
}

if [ ! -e $LIST_DIR ]; then
    usage

    exit 1
fi

for list_file in $LIST_DIR/*.list; do
    install_by_file $list_file
done



