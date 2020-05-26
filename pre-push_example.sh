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








#!/usr/bin/env bash

protected_branch='master'
current_branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

if [ $protected_branch = $current_branch ]; then
    read -p "You're about to push master, is that what you intended? [y|n] " -n 5 -r < /dev/tty
    echo
    echo
    echo $REPLY
    if echo $REPLY | grep -E '^[Yy]es$' > /dev/null; then
        exit 0 # push will execute
    fi
    exit 1 # push will not execute
else
    exit 0 # push will execute this time
fi    




#!/usr/bin/env node 


const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('What do you think of Node.js? ', (answer) => {
  // TODO: Log the answer in a database
  console.log(`Thank you for your valuable feedback: ${answer}`);
  rl.close();
});











var stdin = process.openStdin(); 
require('tty').setRawMode(true);    

stdin.on('keypress', function (chunk, key) {
  process.stdout.write('Get Chunk: ' + chunk + '\n');
  if (key && key.ctrl && key.name == 'c') process.exit();
});







#!/usr/bin/env node 

function processThis(input) {
  console.log(input);  //your code goes here
} 

console.log("Inside pre-push");

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
  _input += input;
});

process.on('SIGINT', function(){
    console.log(input);
    process.exit();
});








#!/usr/bin/env node

var tty = require('tty');  
process.stdin.setRawMode(true);  
process.stdin.resume();  
 console.log('I am leaving now');  
process.stdin.on('keypress', function(char, key) {  
  if (key && key.ctrl && key.name == 'c') {  
    process.exit()  
  }  
});  






















#!/usr/bin/env node 




import { forceStdinTty } from 'force-stdin-tty';
 
let overwroteStdin = false;
try {
  overwroteStdin = forceStdinTty();
} catch {
  console.error('Please push your code in a terminal.');
  process.exit(1);
}
 
if (overwroteStdin) {
  process.stdin.destroy();
}



// var fs = require('fs');
// const readline = require('readline');

// console.log(process);

// // fs.writeFileSync('abcd.txt', process, "utf8");


// const rl = readline.createInterface({
//   input: process.stdin,
//   output: process.stdout
// });



// rl.question('What do you think of Node.js? ', (answer) => {
//   // TODO: Log the answer in a database
//   console.log(`Thank you for your valuable feedback:`);
//   console.log("\n");
//   console.log(`Thank you for your valuable feedback: abcd`);

//   rl.close();
// });






// const prompt = require('prompt');

// prompt.start();

// prompt.get(['username', 'email'], function (err, result) {
//     if (err) { return onErr(err); }
//     console.log('Command-line input received:');
//     console.log('  Username: ' + result.username);
//     console.log('  Email: ' + result.email);
// });

// function onErr(err) {
//     console.log(err);
//     return 1;
// }