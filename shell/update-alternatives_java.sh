#!/bin/bash

#####################
# Design for one command switch jdk into jdk1.6 or jdk1.7.
#
#
#####################

JDK16_PATH="/opt/jdk1.6.0_45/bin/"
JDK17_PATH="/opt/jdk1.7.0_71/bin/"
JDK_PATH=""

if [ "$1" = "-6" ]; then
    JDK_PATH=$JDK16_PATH
elif [ "$1" = "-7" ]; then
    JDK_PATH=$JDK17_PATH
fi

echo $JDK_PATH

SYMBOL_PATH="/etc/alternatives/"
SYMBOLS=("java" "javac" "javadoc" "javah" "javap" "javaws")

function rm_links()
{
    for sym in ${SYMBOLS[@]}; do
        echo "$SYMBOL_PATH/$sym"

        sudo rm $SYMBOL_PATH/$sym
    done
}

function mk_links()
{
    for sym in ${SYMBOLS[@]}; do
        sudo ln -s $JDK_PATH/$sym $SYMBOL_PATH/$sym
    done
}

function help()
{
cat <<help
Command: 
    update-alternative_java [option]

Options:
    -6: Switch current jdk into jdk1.6
    -7: Switch current jdk into jdk1.7
help
}


if [ "$JDK_PATH" != "" ]; then
    rm_links
    mk_links
else
    help
fi

