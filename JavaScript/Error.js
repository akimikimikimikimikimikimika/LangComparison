#! /usr/bin/env node

var log = "\r\nこれから例外処理を試します\r\n\r\n";

// try節内で起こりうる例外は捕捉される
try {
	// 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
	throw "あなたは過ちを犯した!!";
}
catch(e) {
	log+="エラーが発生しました\r\n";
	log+=`エラー内容:\r\n${e}\r\n`;
}
// 最後にfinally節が実行される
finally {
	log+="以上でエラーチェックを終了します\r\n";
}
// tryに対応して,catchかfinallyのどちらか一方は最低限必要である

console.log(log);