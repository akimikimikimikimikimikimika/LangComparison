#! /usr/local/bin/php
<?php
// PHP

/*
	複数行のコメント
*/
?>
<?php

chdir(__DIR__."/PHP");

print "\r\n\r\n";

print "こんにちは。私の名前はPHP。\r\n";

while (true) {
	print "\r\n\r\n何がしたい?\r\n\r\n";
	print "1. 標準入出力を試す\r\n";
	print "2. 色々な値を試す\r\n";
	print "3. 演算子を試す\r\n";
	print "4. 条件分岐を試す\r\n";
	print "5. 繰り返しを試す\r\n";
	print "6. 正規表現を試す\r\n";
	print "7. ファイル操作を試す\r\n";
	print "8. ファイルパスを試す\r\n";
	print "9. コマンドライン引数を試す\r\n";
	print "\r\n";
	print "0. 終了\r\n";
	print "\r\n";
	$action = trim(fgets(STDIN));
	print "\r\n\r\n\r\n";
	if ($action == "0") {
		break;
	}
	elseif ($action == "1") {
		passthru("./Stdinout.php");
	}
	elseif ($action == "2") {
		passthru("./Values.php");
	}
	elseif ($action == "3") {
		passthru("./Operators.php");
	}
	elseif ($action == "4") {
		passthru("./Condition.php");
	}
	elseif ($action == "5") {
		passthru("./Loop.php");
	}
	elseif ($action == "6") {
		passthru("./RegExp.php");
	}
	elseif ($action == "7") {
		passthru("./File.php");
	}
	elseif ($action == "8") {
		passthru("./Path.php");
	}
	elseif ($action == "9") {
		passthru("./Arguments.php このプログラムを直接実行してみよう。 \"ここにあるよ: PHP/Arguments.php\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"PHP/Arguments.php 引数1 引数2…\" \"\"  すると,引数1,引数2…が順に出力されます");
	}
	else {
		print "指定したアクションは見つかりませんでした\r\n";
	}
}

exit(0);

?>