#! /usr/local/bin/php
<?php

print "\r\nこれから例外処理を試します\r\n\r\n";

# try節内で起こりうる例外は捕捉される
try {
	# 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
	throw new Exception("あなたは過ちを犯した!!");
}
# 例外をキャッチすればcatch節が実行される
catch (Exception $e) {
	print "エラーが発生しました\r\n";
	print "エラー内容:\r\n$e\r\n";
}
# 最後にfinally節が実行される
finally {
	print "以上でエラーチェックを終了します\r\n";
}
# tryに対応して,catchかfinallyのどちらか一方は最低限必要である

print "\r\n\r\n";

?>