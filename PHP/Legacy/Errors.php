#! /usr/bin/env php
<?php

require_once("Utility.php");

function Errors() {

	pnl(1);

	println("これから例外処理を試します",2);

	# try節内で起こりうる例外は捕捉される
	try {
		# 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
		throw new Exception("あなたは過ちを犯した!!");
	}
	# 例外をキャッチすればcatch節が実行される
	catch (Exception $e) {
		println("エラーが発生しました");
		prints("エラー内容:",$e);
	}
	# 最後にfinally節が実行される
	finally {
		println("以上でエラーチェックを終了します");
	}
	# tryに対応して,catchかfinallyのどちらか一方は最低限必要である

	pnl(2);

}

if (running_directly(__FILE__)) Errors();

?>