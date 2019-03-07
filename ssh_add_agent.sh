#!/bin/sh

#set -ex

#writes a line to this log file when it runs
log=/tmp/ssh_plist.log
 
printf "ran at launch - " > $log
date >> $log

ssh-add -A >> $log
