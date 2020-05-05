#! /usr/bin/env php
<?php

require_once("Utility.php");

function Values() {
	global $i;
		// 関数外の変数 $i を関数内で使用することを示す
		// $i は恒等関数であるが,この定義は Utility.php 内にある

	# 文字列
	$string = "ピーエイチピー";
	$lines = <<< Lines
	First line
	Second line
	Third line
	Lines;

	// 先頭の <<< Lines から末尾の Lines までを1つのオブジェクトとして扱う

	/*
		変数展開/式展開の仕方
		"The value is $val"
		"The value is {$val}"
		"The value is {$i($val*2)}"
		但し,2つ目の記法を用いる際には,
			$i = function($v){return $v;};
		などとして,恒等関数を定義しなければならない
	*/

	# 数値
	$integer = 6;
	$float = .0375e-6;

	# 真偽値
	$boolean = TRUE;
	$null = NULL;
		# PHPにおいて,真偽値は単に0や1そのものである

	# 配列
	$array1 = array(1,"second",3,3.14,FALSE);
	$array2 = [1,"second",3,3.14,FALSE]; # 新しいPHPでは,このような短縮記法が利用可能である (≥5.4)

	# 連想配列
	$array3 = array("a"=>1,"b"=>"second","c"=>3,"d"=>3.14,"e"=>FALSE);
	$array4 = ["a"=>1,"b"=>"second","c"=>3,"d"=>3.14,"e"=>FALSE];

	# 範囲
	$ranI = range(5,8); # 5≦x≦8

	# 関数
	function cube($val) {
		return $val**3;
	}

	# 無名関数
	$func = function($val) {
		return $val**2;
	};
	/*
		関数で外部変数を使用する方法
		• 関数内で global $var; などと宣言することで,外部のグローバル変数 $var の読み書きができるようになる。
		• function cube($val) use($integer) のように, use節で変数を指定すると,外部にある変数 $integer の読み書きができるようになる。
	*/

	/*
		PHPの型判定
		• gettype($val) -> string : 型を示す
			• "string","integer","double","array","object","resource","resource (closed)","NULL","unknown type" のいづれか
			• 逆に set_type($val,$type) -> bool で型を変更できるみたい
		• is_string,is_int,is_float,is_bool,is_array,is_object,is_resource,is_null
			各々の型の判定
		• is_numeric($val) -> bool : 数値/数値形式の文字列は真
		• is_scalar($val) -> bool : string,integer,float,booleanは真
		• is_callable($val) -> bool : 関数なら真
		• get_class($val) -> string : objectのクラスを示す (object以外では使えない)
		• function_exists($name) -> bool : 名前が$nameの関数が存在するかどうか
	*/

	println(<<<"Values"

		色々な値を試します

		文字列: $string
		文字列2:
		$lines
		数値:
		   整数: $integer,{$i($func($integer))},{$i(cube($integer))}
		   浮動小数: $float
		真偽値: $boolean
		値なし: $null
		配列:
		   {$i($array1)}
		   2番目:$array1[2]
		   大きさ:{$i(count($array1))}
		連想配列:
		   {$i($array2)}
		   b= {$array3["b"]}
		   大きさ: {$i(count($array2))}
		範囲:
		   5≦x≦8 = {$i($ranI)}
		無名関数:
		   {$i($func)}

	Values);

	/*
		PHPのブロック : { }
		PHPの変数は,自動的にクローズ参照する仕様である。
		グローバル変数は宣言した場所に依らず,至るところからアクセス可能な変数。
		ローカル変数は,宣言した領域内(クラス,メソッド,ファイル等)でのみアクセス可能な変数。
		基本的にブロックの外側の変数は内側からは参照できないが, global を前置すると参照できるようになる

		グローバル変数 : $var
		ローカル変数 : $var
		定数 : const var
	*/

	pnl(2);

}

if (running_directly(__FILE__)) Values();

?>