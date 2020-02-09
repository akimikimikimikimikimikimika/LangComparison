#! /usr/bin/env node

const rl=require("readline");
const process=require("process");
let int=rl.createInterface(process.stdin,process.stdout);

// Node.js の標準入力はとにかく面倒臭い
// 非同期関数を使って標準入力を実装してみる
let input=async ()=>{
	var text="";
	await new Promise(r=>{
		int.once("line",sin=>{
			text=sin;
			r();
		});
	});
	return text;
};

(async ()=>{

	var ask=true;
	if (process.argv[2]=="no-stdin") ask=false;

	console.log("こんにちは。私の名前はJavaScript。");
	if (ask) {
		console.log("あなたのことを教えてください");
		let aboutYou = await input();
		console.log(`あなたは ${aboutYou} ですね。わかりました。\r\n`);
	}
	else {
		console.log(`

あなたのことについては今回は聞かないでおきます。
直接実行した時にあなたのことを聞きます。

	JavaScript/Stdinout.js
`);
	}

	console.log("\r\nこれから幾つかの出力の仕方を披露しますね。");
	console.log("一般のログ出力です。");
	console.info("メッセージログを出力します。");
	console.warn("警告を発します。");
	console.error("エラーを発します。");

	console.log("以上です");
	console.log("\r\n");

	process.exit();

})();