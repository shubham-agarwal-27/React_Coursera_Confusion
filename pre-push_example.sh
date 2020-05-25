#!/usr/bin/env bash

protected_branch='master'
current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

if [ $protected_branch = $current_branch ]; then
    read -p "You're about to push master, is that what you intended? [y|n] " -n 3 -r < /dev/tty
    echo
    echo
    echo $REPLY
    if echo $REPLY | grep -E '^[Yy]$' > /dev/null; then
    	read -p "You're about to push master, is that what you intended? [y|n] " -n 3 -r < /dev/tty
    	echo
    	echo $REPLY
        exit 0 # push executes
    fi
    exit 1 # push will not execute
else
    exit 0 # push will execute this time
fi	



#!/bin/sh

echo "[post-commit hook] Commit done!"

# Allows us to read user input below, assigns stdin to keyboard
exec < /dev/tty

while true; do
  read -p "[post-commit hook] Check for outdated gems? (Y/n) " yn
  if [ "$yn" = "" ]; then
    yn='Y'
  fi
  case $yn in
      [Yy] ) bundle outdated --pre; break;;
      [Nn] ) exit;;
      * ) echo "Please answer y or n for yes or no.";;
  esac
done