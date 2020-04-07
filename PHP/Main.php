#! /usr/bin/env php
<?php
// PHP

/*
	複数行のコメント
*/
?>
<?php

chdir(__DIR__);

require_once("Utility.php");
require_once("Stdio.php");
require_once("Values.php");
require_once("Operators.php");
require_once("Condition.php");
require_once("Loop.php");
require_once("Calc.php");
require_once("Strings.php");
require_once("Format.php");
require_once("RegEx.php");
require_once("DateTime.php");
require_once("Format.php");
require_once("Classes.php");
require_once("Errors.php");
require_once("Files.php");
require_once("Path.php");
require_once("Process.php");
require_once("Arguments.php");

println(<<<"Welcome"

	こんにちは。私の名前はPHP。
Welcome);

while (true) {

	println(<<< Menu

		何がしたい?

		1. 標準入出力を試す
		2. 色々な値を試す
		3. 演算子を試す
		4. 条件分岐を試す
		5. 繰り返しを試す
		6. 数学的演算を試す
		7. 文字列を試す
		8. 文字列フォーマットを試す
		9. 正規表現を試す
		a. 日付と時刻を試す
		b. クラスを試す
		c. 例外処理を試す
		d. ファイル操作を試す
		e. ファイルパスを試す
		f. プロセス系を試す
		h. コマンドライン引数を試す

		0. 終了

	Menu);

	$action = trim(fgets(STDIN));

	pnl(3);

	if ($action=="0") break;
	elseif ($action=="1") Stdio();
	elseif ($action=="2") Values();
	elseif ($action=="3") Operators();
	elseif ($action=="4") Condition();
	elseif ($action=="5") Repeat();
	elseif ($action=="6") Calc();
	elseif ($action=="7") Strings();
	elseif ($action=="8") Format();
	elseif ($action=="9") RegEx();
	elseif ($action=="a") DateTime();
	elseif ($action=="b") Classes();
	elseif ($action=="c") Error();
	elseif ($action=="d") Files();
	elseif ($action=="e") Path();
	elseif ($action=="f") Process();
	elseif ($action=="h") Arguments();
	else println(<<<"Error"
		指定したアクションは見つかりませんでした

	Error);
}
/*
	外部ファイルを実行する方法:
	• シェルコマンドとして実行する
	passthru("./Stdio.php");
	• モジュールとして実行する
	require_once("Stdio.php");
	Stdio();
*/

exit(0);

?>