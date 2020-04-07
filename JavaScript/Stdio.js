#! /usr/bin/env node

let rl=require("readline"),process=require("process");
let u=require("./Utility.js");
let e=exports;
let int=rl.createInterface(process.stdin,process.stdout);

// Node.js の標準入力はとにかく面倒臭い
// 非同期関数を使って標準入力を実装してみる
e.input=async ()=>{
	var text="";
	await new Promise(r=>{
		int.once("line",sin=>{
			text=sin;
			r();
		});
	});
	return text;
};

e.Stdio=async ()=>{

	u.println(`
		こんにちは。私の名前はJavaScript。
		あなたのことを教えてください
	`);

	let aboutYou = await e.input();

	u.println(`
		あなたは ${aboutYou} ですね。わかりました。

		これから幾つかの出力の仕方を披露しますね。
	`);

	console.log("一般のログ出力です。");
	console.info("メッセージログを出力します。");
	console.warn("警告を発します。");
	console.error("エラーを発します。");
	process.stdout.write("こんな出力も可能です。改行しません。");
	process.stderr.write("たまにはエラーも出したくなります");

	u.pnl(1);
	u.println("以上です");

	u.pnl(2);

	return 0;

};

if (!module.parent) e.Stdio().then(process.exit);