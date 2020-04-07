#! /usr/bin/env node

"use strict";
// 最新のJavaScript文法に準拠し,現在非標準となった記法を使用できないようにするには,JavaScriptファイルの先頭や,関数の先頭に "use strict"; という行を付加する。

// JavaScriptの項目に書かれている内容の多くは Node.js で動作するように書かれており,Web上ではテストできない内容が多い。テストするにしても,Webで利用可能なように適宜書き換えが必要。

let process=require("process");

process.chdir(__dirname);

let u=require("./Utility.js");
let {Stdio,input}=require("./Stdio.js");
let {Values}=require("./Values.js");
let {Operators}=require("./Operators.js");
let {Condition}=require("./Condition.js");
let {Repeat}=require("./Repeat.js");
let {Calc}=require("./Calc.js");
let {Strings}=require("./Strings.js");
let {RegEx}=require("./RegEx.js");
let {DateTime}=require("./DateTime.js");
let {Classes}=require("./Classes.js");
let {Prototype}=require("./Prototype.js");
let {Errors}=require("./Errors.js");
let {Files}=require("./Files.js");
let {Path}=require("./Path.js");
let {Process}=require("./Process.js");
let {Arguments}=require("./Arguments.js");

// 入力装置が非同期関数を利用せざるを得ない関係で,Main.jsも非同期関数を即時実行するという形をとる
(async ()=>{

	u.println(`

		こんにちは。私の名前はJavaScript。
	`);

	while (true) {
		u.println(`

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
		u.pnl(3);

		if (action=="0") break;
		else if (action=="1") await Stdio();
		else if (action=="2") Values();
		else if (action=="3") Operators();
		else if (action=="4") Condition();
		else if (action=="5") Repeat();
		else if (action=="6") Calc();
		else if (action=="7") Strings();
		else if (action=="9") RegEx();
		else if (action=="a") DateTime();
		else if (action=="b") Classes();
		else if (action=="B") Prototype();
		else if (action=="c") Errors();
		else if (action=="d") Files();
		else if (action=="e") Path();
		else if (action=="f") await Process();
		else if (action=="h") Arguments();
		else u.println(`
			指定したアクションは見つかりませんでした

		`);

	}

	return 0;

})().then(process.exit);