#!/usr/bin/env node

const fs = require('fs');
const tty = require('tty');

if (!process.stdin.isTTY) {
  const { O_RDONLY, O_NOCTTY } = fs.constants;
  let fd;
  try {
    fd = fs.openSync('/dev/tty', O_RDONLY + O_NOCTTY);
  } catch (error) {
    console.error('Please push your code in a terminal.');
    process.exit(1);
  }

  const stdin = new tty.ReadStream(fd);

  Object.defineProperty(process, 'stdin', {
    configurable: true,
    enumerable: true,
    get: () => stdin,
  });
}

cosole.log("Ends the test.js file");
process.stdin.destroy();
process.exit(0);