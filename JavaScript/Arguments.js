#! /usr/bin/env node

/*
	このファイルに書かれている内容は Node.js のプロセスの内容である。
	Web上ではテストできない。
*/

const process = require("process");

// 引数は1番目から (0番目はNode.jsのパス,1番目はこのファイルを呼ぶパス)

var log="\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n";

process.argv.forEach((s,n)=>{
    if (n>1) log+=` ${n-1}: ${s}\r\n`;
});

console.log(log);

console.log("\r\n");