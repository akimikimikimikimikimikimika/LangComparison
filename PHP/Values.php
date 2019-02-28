#! /usr/bin/php

<?php

// 文字列
$string = "ピーエイチピー";
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

print "\n色々な値を試します\n";
print "\n文字列:".$string;
print "\n   長さ:".strlen($string);
print "\n数値:".$number.",".$func($number).",".cube($number);
print "\n真偽値:".$boolean.",".$null;
print "\n配列:\n";
print $array1;
print "\n   2番目:".$array1[2]."\n";
print "\n連想配列:\n";
print $array2;
print "\n   b= ".$array2["b"];
print "\n";
?>
