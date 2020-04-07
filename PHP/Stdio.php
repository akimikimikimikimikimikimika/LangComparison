#! /usr/bin/env php
<?php

require_once("Utility.php");

function Stdio() {
	global $i;

	println(<<<"Stdinout"
		こんにちは。私の名前はPHPです。
		あなたのことを教えてください
	Stdinout);

	print("あなたは...");
	$aboutYou = trim(fgets(STDIN));

	println(<<<"Stdinout"
		あなたは $aboutYou ですね。わかりました。

		これから幾つかの出力の仕方を披露しますね。
	Stdinout);

	echo "後ろに改行を付けません。";
	print "後ろに改行を付けません。";

?>
直接入力するだけで出力するので,非常に便利です。
<?="こういう出力の仕方もあります。"; ?>
<?php

	pnl(1);

	print_r("型のよくわかる出力です");
	pnl(1);
	print_r([TRUE,2,"Third"]);
		# print_rは2つ目の引数にTRUEを指定すると,出力する代わりに文字列として値を返してくれる。

	printf("数値などを文字列形式にフォーマットできます: %f %f", 3.14, 2.71);
		# printf = sprintf (フォーマット) + print (出力)
	pnl(1);
	println("それから...");
	fputs(STDOUT,"こんな出力も可能です。改行しません。");
	fwrite(STDOUT,"こんな出力も可能です。改行しません。");
	$stdout=fopen("php://stdout","w");
	fputs($stdout,"こんな出力も可能です。改行しません。");
	fputs(STDERR,"たまにはエラーも出したくなります。");
	println("入力してみて");
	fgets(STDIN);
	println("以上です");

	pnl(2);

}

if (running_directly(__FILE__)) Stdio();

?>