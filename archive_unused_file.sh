#!/bin/sh

# PLEASE MENTION DAY, Sdir (Source Directory), and Ddir (Destination Directory) 

Day=10
Sdir=/home/test/remote/test
Ddir=/home/test/remote/test/archive
Aday=2

## Make tar file for X days old ##
## expresion arguments
# g create zip
# z zip
# f file
# comd option argument

      echo Archiving Begins!
   find $ -type f -mtime +$Day | tar gzf archive-ununsed-files-$(date "+%b_%d_%Y_%H_%S").tar.gz
   cd /${Sdir}/*.tar.gz ${Ddir}

      echo -----Finished!-----
      echo 

## Move all tar files to different directory ##

      echo Moving Files! 
   mv -v ${Sdir}/*.tar.gz ${Ddir}

      echo -----Finished!-----
      echo

## Delete all files which older than X days ##

      echo Deleteting Files Source Folder!
   find ${Sdir} -type f -mtime +$Day -delete
      echo ----- Finished!-----
      echo

## Delete tar files after X days ##

if condition

      echo Deleting Files from Destination
  find ${Sdir} -type f -name "*.gz" -mtime +$Aday -delete
      echo -----Finished!-----
      echo

