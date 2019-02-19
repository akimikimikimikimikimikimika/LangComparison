#! /usr/bin/php

<?php

// 文字列
$string = "STRING";
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
print "文字列:".$string."\n";
print "数値:".$number.",".$func($number).",".cube($number)."\n";
print "真偽値:".$boolean.",".$null."\n";
print "配列:\n";
print $array1."\n";
print "   2番目:".$array1[2]."\n";
print "連想配列:\n";
print $array2."\n";
print "   b= ".$array2["b"]."\n";

?>
