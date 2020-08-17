#! /usr/bin/env node

let process = require("process"),u=require("./Utility.js");
let e = exports;

process.argv;
// 引数は2番目から (0番目はNode.jsのパス,1番目はこのファイルを呼ぶパス)

e.Arguments = ()=>{

	u.pnl(1);

	u.println("このファイルを実行するにあたっての引数は以下の通りです:",2);

	var arguments=process.argv;

	// 引数がない場合はテンプレートに置き換え
	if (arguments.length==2) arguments=defaultArgs;

	arguments.forEach((s,n)=>{
		if (n>1) u.println(` ${n-1}: ${s}`);
	});

	u.pnl(2);

};

let defaultArgs=[
	"node",
	"./Arguments.js",
	"このプログラムを直接実行してみよう。",
	"ここにあるよ: JavaScript/Arguments.js",
	"",
	"コマンドラインに以下のように入力して実行します",
	"",
	"JavaScript/Arguments.js 引数1 引数2…",
	"",
	"すると,引数1,引数2…が順に出力されます"
];

if (!module.parent) e.Arguments();