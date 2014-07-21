#!/bin/bash

BASE_DIR=.
REPO=/opt/repo/repo-1.12

for dir in $BASE_DIR/*
do
    if [ -h $dir -o -d $dir ]; then
        if [ -d $dir/.repo ]; then
            real_dir=`readlink -f $dir`
            cd $real_dir
            echo `pwd`
            $REPO sync
        fi
    fi
done

