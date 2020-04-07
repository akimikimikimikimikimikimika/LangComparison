#! /usr/bin/env php
<?php

require_once("Utility.php");

$argv;
# 引数は1番目から (0番目はこのファイルを呼ぶパス)

function Arguments() {
	global $argv;
	global $default_args;

	pnl(1);

	println("このファイルを実行するにあたっての引数は以下の通りです:",2);

	$arguments=$argv;

	// 引数がない場合はテンプレートに置き換え
	if (count($arguments)==1) $arguments=$default_args;
	// 一応 $argv の個数を示す整数は $argc でも得られるが,ここではこれを使わない。

	$n=0;
	foreach ($arguments as $s) {
		if ($n>0) {
			println(" $n: $s");
		}
		$n++;
	}

	pnl(2);

}

$default_args=[
	"./Arguments.php",
	"このプログラムを直接実行してみよう。",
	"ここにあるよ: PHP/Arguments.php",
	"",
	"コマンドラインに以下のように入力して実行します",
	"",
	"PHP/Arguments.php 引数1 引数2…",
	"",
	"すると,引数1,引数2…が順に出力されます"
];

if (running_directly(__FILE__)) Arguments();

?>