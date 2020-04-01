#!/bin/sh

# debug
# set -ex

#writes a line to this log file when it runs
log=/tmp/ssh_plist.log
 
printf "Ran at launch - " >> $log
date >> $log
printf "Removing idents: \n --- \n"  >> $log 2>&1
ssh-add -D >> $log 2>&1
printf "Adding idents with -A: \n --- \n"  >> $log 2>&1
ssh-add -A >> $log 2>&1
printf "Adding idents with -K: \n --- \n"   >> $log 2>&1
ssh-add -K >> $log 2>&1