#!/bin/zsh

# debug
# set -ex

# date variables
timestamp=`date '+%Y-%m-%d %H:%M:%S'`
# define logfile
log= "$HOME/opt/ssh_manage.log"

printf "Ran at $timestamp \n --- \n" >> $log

printf "\n Removing idents: \n --- \n"  >> $log 2>&1
ssh-add -D >> $log 2>&1
printf " \n Adding idents with -A: \n --- \n"  >> $log 2>&1
ssh-add -A >> $log 2>&1
printf " \n Adding idents with -K: \n --- \n"   >> $log 2>&1
ssh-add -K >> $log 2>&1
printf "\n Key Management Completed @ $timestamp \n ---- \n" >> $log 2>&1