#! /usr/bin/env node

let process = require("process");
let os = require("os");
let u=require("./Utility.js");
let e=exports;

e.Path=()=>{

	u.println(`
		ホームディレクトリ:       ${os.homedir()}
		カレントディレクトリ:     ${process.cwd()}

		このファイルのある場所:   ${__dirname}
	`);

	u.pnl(2);

};

if (!module.parent) e.Path();