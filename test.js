#!/usr/bin/env node

var readline = require('readline');
var input = require('fs').createReadStream('/dev/tty');
var rl = readline.createInterface({
  input: input
, output: process.stdout
//, terminal: false
});
rl.question("This is the prompt: ", function (response) {
  console.log("This is the response:", response);
  input.close();
  rl.close();
  // If I don't close the input explicitly, it stays open.
  
});