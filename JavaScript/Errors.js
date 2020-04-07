#! /usr/bin/env node

let u=require("./Utility.js");
let e=exports;

e.Errors=()=>{

	u.pnl(1);

	u.println("これから例外処理を試します",2);

	// try節内で起こりうる例外は捕捉される
	try {
		// 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
		throw "あなたは過ちを犯した!!";
	}
	catch(e) {
		u.prints(
			"エラーが発生しました",
			"エラー内容:",
			e
		);
	}
	// 最後にfinally節が実行される
	finally {
		u.println("以上でエラーチェックを終了します");
	}
	// tryに対応して,catchかfinallyのどちらか一方は最低限必要である

	u.pnl(2);

};

if (!module.parent) e.Errors();