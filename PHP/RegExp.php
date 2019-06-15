#! /usr/bin/env php
<?php

$i = function($v){return $v;};

echo "\r\nこれから正規表現を試します\r\n\r\n";

$text="The Quick Brown Fox Jumps Over The Lazy Dog";
print "$text → \r\n";

print "\r\n検索\r\n";
preg_match("/the ([a-z]+) ([a-z]+) fox/i",$text,$found);
print "preg_match: ".$text." → {$i(print_r($found))}\r\n";
preg_match_all("/the ([a-z]+) ([a-z]+) fox/i",$text,$found);
print "preg_match_all: ".$text." → {$i(print_r($found))}\r\n";

print "\r\nマッチの確認\r\n";
if (preg_match("/fox jumps/i",$text)) {
	print "狐が飛んでいます\r\n";
}
else {
	print "狐は飛んでいません\r\n";
}
if (preg_match("/dog jumps/i",$text)) {
	print "犬が飛んでいます\r\n";
}
else {
	print "犬は飛んでいません\r\n";
}

print "\r\n置換\r\n";
$replaced=preg_replace("/([a-z]+)o([a-z]+)/i",'« $1ö$2 »',$text,1);
print "preg_replace(,,1):\r\n".$replaced."\r\n";
$replaced=preg_replace("/([a-z]+)o([a-z]+)/i",'« $1ö$2 »',$text);
print "preg_replace(,,0):\r\n".$replaced."\r\n";

print "\r\n分割と結合\r\n";
# 文字列で分割
$array=explode(" ",$text);
$arranged=implode("_",$array);
print "preg_split:\r\n$arranged\r\n";
# 正規表現で分割
$array=preg_split("/(the|s)? /i",$text);
$arranged=implode("_",$array);
print "preg_split:\r\n$arranged\r\n";

print "\r\n\r\n";

?>