#! /usr/local/bin/php
<?php

echo "\r\nこれから正規表現を試します\r\n";

print "\r\n検索\r\n";

$text="IllUsTrAtE";
preg_match("/l/i",$text,$find);
print "preg_match: ".$text." → ".print_r($find)."\r\n";
preg_match_all("/l/i",$text,$find);
print "preg_match_all: ".$text." → ".print_r($find)."\r\n";

print "\r\n置換\r\n";

$text="<a> <b> <c>";
$replace=preg_replace("/<([a-z])>/i",'{$1}',$text,1);
print "preg_replace: ".$text." → ".$replace."\r\n";
$replace=preg_replace("/<([a-z])>/i",'{$1}',$text);
print "preg_replace: ".$text." → ".$replace."\r\n";

print "\r\n分割と結合\r\n";

$text="a-b-c";
print "$text → ";
$arr=preg_split("/-/",$text);
$text=implode(".",$arr);
print "$text\r\n";

print "\r\nマッチの確認\r\n";
$test1="qUiVeR";
if (preg_match("/^qu/i",$test1)) {
	print "$test1 はquで始まります\r\n";
}
else {
	print "$test1 はquで始まりません\r\n";
}

print "\r\n\r\n";

?>