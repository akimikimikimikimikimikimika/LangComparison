#! /usr/local/bin/php
<?php

// 文字列
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
// 数値
$number = 6;
// 真偽値
$boolean = TRUE;
$null = NULL;
// 配列
$array1 = array(1,"second",3,3.14,false);
// 連想配列
$array2 = array("a"=>1,"b"=>"second","c"=>3,"d"=>3.14,"e"=>false);
// 関数
function cube($val) {
	return $val**3;
}
// 無名関数
$func = function($val) {
	return $val**2;
};

$i = function($v){return $v;};

print "\r\n色々な値を試します\r\n";
print "\r\n文字列:$string";
print "\r\n   長さ:{$i(strlen($string))}";
print "\r\n文字列2:\r\n$lines";
print "\r\n数値:$number,{$i($func($number))},{$i(cube($number))}";
print "\r\n真偽値:$boolean,$null";
print "\r\n配列:\r\n";
print "   2番目:$array1[2]\r\n";
print "   大きさ:{$i(count($array1))}\r\n";
print "\r\n連想配列:\r\n";
print "   b= {$array2["b"]}\r\n";
print "   大きさ:{$i(count($array2))}\r\n";

print "\r\n\r\n";

?>