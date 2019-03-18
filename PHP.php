#! /usr/local/bin/php
<?php
// PHP

/*
	複数行のコメント
*/
?>
<?php

chdir(__DIR__."/PHP");

print <<<"Welcome"

こんにちは。私の名前はPHP。
Welcome;

while (true) {
	print <<< Menu

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 正規表現を試す
7. ファイル操作を試す
8. ファイルパスを試す
9. 数学的演算を試す
a. 日付と時刻を試す
b. プロセス系を試す
c. コマンドライン引数を試す

0. 終了


Menu;
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
		passthru("./Math.php");
	}
	elseif ($action == "a") {
		passthru("./DateTime.php");
	}
	elseif ($action == "b") {
		passthru("./Process.php");
	}
	elseif ($action == "c") {
		passthru("./Arguments.php このプログラムを直接実行してみよう。 \"ここにあるよ: PHP/Arguments.php\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"PHP/Arguments.php 引数1 引数2…\" \"\"  すると,引数1,引数2…が順に出力されます");
	}
	else {
		print <<<"Error"
指定したアクションは見つかりませんでした

Error;
	}
}

exit(0);

?>