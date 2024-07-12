#!/bin/bash

# Current job directory
CURRENT_JOB_DIR_FILE="$HOME/.config/job/dir.txt"
JOB=`cat $CURRENT_JOB_DIR_FILE`

# If no arguments supplied, just cd to the job directory
if [ $# -eq 0 ]
    then
        cd "$JOB"
        return
fi

# Set the current directory as the new job directory
if [ $1 = 'set' ] # If you ever run this and it gives an error, '==' in bash, '=' in zsh
    then
        pwd > $CURRENT_JOB_DIR_FILE
        return
fi