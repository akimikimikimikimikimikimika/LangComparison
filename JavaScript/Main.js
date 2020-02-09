#! /usr/bin/env node

"use strict";
// 最新のJavaScript文法に準拠し,現在非標準となった記法を使用できないようにするには,JavaScriptファイルの先頭や,関数の先頭に "use strict"; という行を付加する。

// JavaScriptの項目に書かれている内容の多くは Node.js で動作するように書かれており,Web上ではテストできない内容が多い。

const rl=require("readline");
const process=require("process");
const child_process = require("child_process");
let int=rl.createInterface(process.stdin,process.stdout);

process.chdir(__dirname);

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

console.log(`

こんにちは。私の名前はJavaScript。`);

(async ()=>{

	while (true) {
		console.log(`

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 数学的演算を試す
7. 文字列を試す
9. 正規表現を試す
a. 日付と時刻を試す
b. クラスを試す
B. クラスを試す (プロトタイプ式)
c. 例外処理を試す
d. ファイル操作を試す
e. ファイルパスを試す
f. プロセス系を試す
h. コマンドライン引数を試す

0. 終了


`);
		let action = await input();
		console.log("\r\n\r\n");
		if (action=="0") break;
		else if (action=="1") console.log(child_process.execSync("./Stdinout.js no-stdin").toString());
		else if (action=="2") console.log(child_process.execSync("./Values.js").toString());
		else if (action=="3") console.log(child_process.execSync("./Operators.js").toString());
		else if (action=="4") console.log(child_process.execSync("./Condition.js").toString());
		else if (action=="5") console.log(child_process.execSync("./Loop.js").toString());
		else if (action=="6") console.log(child_process.execSync("./Math.js").toString());
		else if (action=="7") console.log(child_process.execSync("./String.js").toString());
		else if (action=="9") console.log(child_process.execSync("./RegExp.js").toString());
		else if (action=="a") console.log(child_process.execSync("./DateTime.js").toString());
		else if (action=="b") console.log(child_process.execSync("./Class.js").toString());
		else if (action=="B") console.log(child_process.execSync("./Class2.js").toString());
		else if (action=="c") console.log(child_process.execSync("./Error.js").toString());
		else if (action=="d") console.log(child_process.execSync("./File.js").toString());
		else if (action=="e") console.log(child_process.execSync("./Path.js").toString());
		else if (action=="f") console.log(child_process.execSync("./Process.js").toString());
		else if (action=="h") console.log(child_process.execSync(`./Arguments.js このプログラムを直接実行してみよう。 "ここにあるよ: JavaScript/Arguments.js" "" コマンドラインに以下のように入力して実行します "JavaScript/Arguments.js 引数1 引数2…" "" すると,引数1,引数2…が順に出力されます`).toString());
		else console.log(`
指定したアクションは見つかりませんでした

`);

	}

	process.exit(0);

})();