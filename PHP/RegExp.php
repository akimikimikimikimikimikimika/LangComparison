#! /usr/bin/php

<?php

echo "\nこれから正規表現を試します\n";

print "\n検索\n";

$text="IllUsTrAtE";
preg_match("/l/i",$text,$find);
print "preg_match: ".$text." → ".print_r($find)."\n";
preg_match_all("/l/i",$text,$find);
print "preg_match_all: ".$text." → ".print_r($find)."\n";

print "\n置換\n";

$text="<a> <b> <c>";
$replace=preg_replace("/<([a-z])>/i",'{$1}',$text,1);
print "preg_replace: ".$text." → ".$replace."\n";
$replace=preg_replace("/<([a-z])>/i",'{$1}',$text);
print "preg_replace: ".$text." → ".$replace."\n";

print "\n分割と結合\n";

$text="a-b-c";
print "$text → ";
$arr=preg_split("/-/",$text);
$text=implode(".",$arr);
print "$text\n";

print "\nマッチの確認\n";
$test1="qUiVeR";
if (preg_match("/^qu/i",$test1)) {
	print "$test1 はquで始まります\n";
}
else {
	print "$test1 はquで始まりません\n";
}

?>
