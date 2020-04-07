#! /usr/bin/env node

let u=require("./Utility.js");
let e=exports;

e.RegEx=()=>{

	u.pnl(1);

	u.println("これから正規表現を試します",2);

	let text="The Quick Brown Fox Jumps Over The Lazy Dog";
	u.println(`${text} →`);

	u.pnl(1);

	u.println("検索");
	var found=text.match(/the ([a-z]+) ([a-z]+) fox/g);
	u.prints("String.match:",found);

	u.pnl(1);

	u.println("置換");
	var replaced=text.replace(/([a-z]+)o([a-z]+)/i,"« $1ö$2 »");
	u.prints("gフラグなし:",replaced);
	var replaced=text.replace(/([a-z]+)o([a-z]+)/ig,"« $1ö$2 »");
	u.prints("gフラグあり:",replaced);

	u.pnl(1);

	u.println("分割と結合");
	let array=text.split(/(the|s)? /);
	arranged=array.join("_");
	u.prints(array,arranged);

	u.pnl(1);

	u.println("マッチの確認");
	if (/fox jumps/i.test(text)) u.println("狐が飛んでいます");
	else u.println("狐は飛んでいません");
	if (/dog jumps/i.test(text)) u.println("犬が飛んでいます");
	else u.println("犬は飛んでいません");

	pnl(2);

};

if (!module.parent) e.RegEx();