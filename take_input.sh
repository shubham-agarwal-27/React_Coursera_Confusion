#!/bin/sh

# Allows us to read user input below, assigns stdin to keyboard
# echo "heyy"
# exec < /dev/tty
# read -p "y/n?" yn
# echo $yn
# ps -a
# echo "hi"


ls -al /dev/tty
exec < /dev/tty