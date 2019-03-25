#! /usr/local/bin/php
<?php

# 文字列
$string = "ピーエイチピー";
$lines = <<< Lines
First line
Second line
Third line
Lines;
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
# 配列
$array1 = array(1,"second",3,3.14,false);
# 連想配列
$array2 = array("a"=>1,"b"=>"second","c"=>3,"d"=>3.14,"e"=>false);
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

$i = function($v){return $v;};

print <<<"Values"

色々な値を試します

文字列: $string
   長さ: {$i(strlen($string))}
文字列2:
$lines
数値:
   整数: $integer,{$i($func($integer))},{$i(cube($integer))}
   浮動小数: $float
真偽値: $boolean
値なし: $null
配列:
   2番目:$array1[2]
   大きさ:{$i(count($array1))}
連想配列:
   b= {$array2["b"]}
   大きさ: {$i(count($array2))}
Values;

/*
   PHPのブロック : { }
   PHPの変数は,自動的にクローズ参照する仕様である。
   グローバル変数は宣言した場所に依らず,至るところからアクセス可能な変数。
	ローカル変数は,宣言した領域内(クラス,メソッド,ファイル等)でのみアクセス可能な変数。
	基本的にブロックの外側の変数は内側からは参照できないが, global を前置すると参照できるようになる

   グローバル変数 : global $var
   ローカル変数 : $var
   定数 : const var
*/

print "\r\n\r\n";

?>