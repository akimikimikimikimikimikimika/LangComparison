#! /usr/bin/env php
<?php

require_once("Utility.php");

function RegEx() {
	global $i;

	pnl(1);
	println("これから正規表現を試します",2);

	$text="The Quick Brown Fox Jumps Over The Lazy Dog";
	println("$text → ");

	pnl(1);

	println("検索");

	preg_match("/the ([a-z]+) ([a-z]+) fox/i",$text,$found);
	println("preg_match: $text → {$i(print_r($found))}");

	preg_match_all("/the ([a-z]+) ([a-z]+) fox/i",$text,$found);
	println("preg_match_all: $text → {$i(print_r($found))}");

	/*
		preg_match_all は最初にマッチした部分を配列形式で $found に渡す。
		preg_match_all は複数のマッチした部分を配列形式で $found に渡す。
		e.g.
			preg_match("/<[a-z]>/","<b></b><i></i><u></u><s></s>",$found) → ["<b>"]
			preg_match_all("/<[a-z]>/","<b></b><i></i><u></u><s></s>",$found) → [["<b>","<i>","<u>","<s>"]]
		preg_match_allでは,次の例のような配列の返し方をする
			e.g. preg_match_all(/<([a-z]) title="([a-z]+)">/,'<b title="bold"><i title="italic"><u title="underline"><s title="strike">',$found)
				→ [
					['<b title="bold">','<i title="italic">','<u title="underline">','<s title="strike">'],
					["b","i","u","s"],
					["bold","italic","underline","strike"]
				]
		preg_match の場合も preg_match_all に似た形式の配列である
			e.g. preg_match(/<([a-z]) title="([a-z]+)">/,'<b title="bold"><i title="italic"><u title="underline"><s title="strike">',$found)
				→ [
					'<b title="bold">',
					"b",
					"bold"
				]
	*/

	pnl(1);

	println("マッチの確認");
	if (preg_match("/fox jumps/i",$text)) {
		println("狐が飛んでいます");
	}
	else {
		println("狐は飛んでいません");
	}

	if (preg_match("/dog jumps/i",$text)) {
		println("犬が飛んでいます");
	}
	else {
		println("犬は飛んでいません");
	}

	pnl(1);

	println("置換");

	# 正規表現が使えない置換
	$replaced=str_replace("Jump","Skip",$text); # ignoreCaseする場合は str_ireplace を利用する
	prints("str_replace:",$replaced);
	# 正規表現が使える置換
	$replaced=preg_replace("/([a-z]+)o([a-z]+)/i",'« $1ö$2 »',$text,1);
	prints("preg_replace(,,1):",$replaced);
	$replaced=preg_replace("/([a-z]+)o([a-z]+)/i",'« $1ö$2 »',$text);
	prints("preg_replace(,,0):",$replaced);

	pnl(1);

	println("分割と結合");
	# 文字列で分割
	$array=explode(" ",$text);
	$arranged=implode("_",$array);
	prints("preg_split:",$arranged);
	# 正規表現で分割
	$array=preg_split("/(the|s)? /i",$text);
	$arranged=implode("_",$array);
	prints("preg_split:",$arranged);

	pnl(2);

}

if (running_directly(__FILE__)) RegEx();

?>