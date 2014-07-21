#!/bin/bash -x

ADB="adb logcat"
ADB_ARGV="-v time"
#PACKAGE="com.lewa.netmgr"
#PID=`adb shell ps | grep $PACKAGE | awk '{print $2}'`

LOG_FILE="log_"`date +%Y%m%d%H%M%S`".log"

## [1] Clear previous log first
$ADB -c

## Filte the log by grep
#$ADB $ADB_ARGV | grep "^..MyApp\ | ^..MyActivity"

## Filte the log by grep but except it
#$ADB $ADB_ARGV | grep -v "^..MyApp\ | ^..MyActivity"

## Filte the log by PID
#`$ADB $ADB_ARGV | grep --color=auto $PID > $LOG_FILE`&
#$ADB $ADB_ARGV | grep --color=auto $PID

`$ADB $ADB_ARGV > $LOG_FILE`&
$ADB $ADB_ARGV 

