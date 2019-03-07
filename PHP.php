#! /usr/bin/php

<?php
// PHP

/*
	複数行のコメント
*/
?>

こんにちは。私の名前はPHP。
<?php

$dir = __DIR__;

while (true) {
	print "\n\n何がしたい?\n\n";
	print "1. 標準入出力を試す\n";
	print "2. 色々な値を試す\n";
	print "3. 演算子を試す\n";
	print "4. 条件分岐を試す\n";
	print "5. 繰り返しを試す\n";
	print "6. 正規表現を試す\n";
	print "7. コマンドライン引数を試す\n";
	print "\n";
	print "0. 終了\n";
	print "\n";
	$action = trim(fgets(STDIN));
	print "\n\n\n";
	if ($action == "1") {
		passthru($dir."/PHP/Stdinout.php");
	}
	elseif ($action == "2") {
		passthru($dir."/PHP/Values.php");
	}
	elseif ($action == "3") {
		passthru($dir."/PHP/Operators.php");
	}
	elseif ($action == "4") {
		passthru($dir."/PHP/Condition.php");
	}
	elseif ($action == "5") {
		passthru($dir."/PHP/Loop.php");
	}
	elseif ($action == "6") {
		passthru($dir."/PHP/RegExp.php");
	}
	elseif ($action == "7") {
		passthru($dir."/PHP/Arguments.php このプログラムを直接実行してみよう。 \"ここにあるよ: PHP/Arguments.php\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"PHP/Arguments.php 引数1 引数2…\" \"\"  すると,引数1,引数2…が順に出力されます");
	}
	elseif ($action == "0") {
			break;
	}
	else {
		print "指定したアクションは見つかりませんでした\n";
	}
}
exit(0);

?>
