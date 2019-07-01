#! /usr/bin/env node

/*
    このファイルに書かれている内容は Node.js のファイルシステムの内容であり, Filesystem API とは異なる。
    Web上ではテストできない内容である。
*/

const process = require("process");
const os = require("os");

console.log(`
ホームディレクトリ:       ${os.homedir()}
カレントディレクトリ:     ${process.cwd()}

このファイルのある場所:   ${__dirname}
`)