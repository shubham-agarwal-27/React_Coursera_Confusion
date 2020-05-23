#!/usr/bin/env node


var fs = require('fs');
var text = fs.readFileSync('input.js', "utf8");
fs.writeFileSync('.git/hooks/pre-push', text, "utf8");