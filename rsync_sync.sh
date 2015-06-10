#!/bin/bash

HOST=""
BIN=rsync
PARAMS=-aSvHu
REMOTE_ADDR=10.0.5.113

#rsync $PARAMS ~/workspace2 bing@$REMOTE_ADDR:
rsync $PARAMS ~/workspace bing@$REMOTE_ADDR:
#$BIN $PARAMS $*


