#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "\r\nこれからループ処理を試します\r\n\r\n";

print "\r\nfor (\$n=0; \$n<3; \$n++) {…}\r\n\r\n";
for ($n=0;$n<3;$n++) {
	print "n=".$n."のループ\r\n";
}

print "\r\nforeach \$n (0,1,2) {…}\r\n\r\n";
foreach $n (0,1,2) {
	print "n=".$n."のループ\r\n";
}

print "\r\nforeach (0..2) {…}\r\n\r\n";
foreach (0..2) {
	print "n=".$_."のループ\r\n";
}
# foreach (0..2) のような範囲指定も配列と同等に扱われる
# foreach (0,1,2) とすれば,$nの代わりに$_で要素を取り出せる

print "\r\nforeach \$c (array) {…}\r\n\r\n";
@cs=("壱","弐","参");
foreach $c (@cs) {
	print "c=\"".$c."\"のループ\r\n";
}

print "\r\nwhile (~) {…}\r\n\r\n";
$str="";
while (length($str)<6) {
	$str.="*";
	print "$str\r\n";
}

print "\r\nuntil (~) {…}\r\n\r\n";
$str="";
until (length($str)==6) {
	$str.="*";
	print "$str\r\n";
}

print "\r\ndo {…} while (~)\r\n\r\n";
$str="";
do {
	$str.="+";
	print "$str\r\n";
} while (length($str)<6);

print "\r\ndo {…} until (~)\r\n\r\n";
$str="";
do {
	$str.="+";
	print "$str\r\n";
} until (length($str)==6);

print "\r\n… while ~\r\n\r\n";
$str="";
$str.="-" while length($str)<6;
print "$str\r\n";

print "\r\n… until ~\r\n\r\n";
$str="";
$str.="-" until length($str)==6;
print "$str\r\n";

print "\r\n… foreach ~\r\n\r\n";
$str="";
$str.=$_**0.5 foreach (0,1,4,9,16,25,36);
print "$str\r\n";

print "\r\n⚠︎ C言語との違い\r\n";

print "break	=> last\r\n";
print "continue => next\r\n";

print "\r\n\r\n";