#! /usr/bin/env node

const process = require("process");
const os = require("os");

console.log(`
ホームディレクトリ:       ${os.homedir()}
カレントディレクトリ:     ${process.cwd()}

このファイルのある場所:   ${__dirname}
`)