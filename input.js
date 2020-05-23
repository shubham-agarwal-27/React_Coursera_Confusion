#!/bin/bash
protected_branch='master'  
current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

if [ $protected_branch = $current_branch ]  
then  
  
    echo -en "\033[31mYou're about to push master, is that what you intended? [y|n] \033[0m"
    echo -en "\033[1m"
    read -n 1 -r < /dev/tty
    echo -en "\033[0m"
    
    echo
    if echo $REPLY | grep -E '^[Yy]$' > /dev/null
    then
        exit 0 # push will execute
    fi
    exit 1 # push will not execute
else  
    exit 0 # push will execute
fi