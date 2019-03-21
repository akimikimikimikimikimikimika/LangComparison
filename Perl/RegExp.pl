#! /usr/local/bin/perl

print "\r\nこれから正規表現を試します\r\n\r\n";

print "\r\n置換\r\n";

$text="<a> <b> <c>";
print "gフラグなし: $text → ";
$text =~ s/<([a-z])>/\{\1\}/;
print "$text\r\n";
$text="<a> <b> <c>";
print "gフラグ付き: $text → ";
$text =~ s/<([a-z])>/\{\1\}/g;
print "$text\r\n";

print "\r\n分割と結合\r\n";
$text="a-b-c";
print "$text → ";
@arr=split(/-/,$text);
$text=join(".",@arr);
print "$text\r\n";

# eフラグを付加すれば,演算可能
print "演算: ";
$bh = "HEX2BIN";
print "$bh → "; # HEX2BIN
$bh =~ s/([0-9])/$1*2/e;
print "$bh\r\n"; # HEX4BIN

print "\r\n変換\r\n";

$test3="IllUsTrAtE";
print "$test3 → "; # IllUsTrAtE
$test3 =~ tr/a-z/A-Z/;
print "$test3\r\n"; # ILLUSTRATE

# c: 検索条件以外の文字を置換
$test3="IllUsTrAtE";
print "cフラグ: ";
print "$test3 → "; # IllUsTrAtE
$test3 =~ tr/a-z/*/c;
print "$test3\r\n"; # *ll*s*r*t*

# d: 検索条件以外の文字を削除
$test3="IllUsTrAtE";
print "dフラグ: ";
print "$test3 → "; # IllUsTrAtE
$test3 =~ tr/A-Z//d;
print "$test3\r\n"; # llsrt

# 連続した文字を縮約
$test3="IllUsTrAtE";
print "sフラグ: ";
print "$test3 → "; # IllUsTrAtE
$test3 =~ tr/a-z/A-Z/s;
print "$test3\r\n"; # ILUsTrAtE

print "\r\nマッチの確認\r\n";
$test1="qUiVeR";
$test2="ShIvEr";
if ($test1 =~ /^qu/i) {
	print "$test1 はquで始まります\r\n";
}
else {
	print "$test1 はquで始まりません\r\n";
}
# パターンを記号で囲んで,mを前に付加するなら,様々な記号で正規表現は表せる
if ($test2 =~ m{^qu}i) {
	print "$test2 はquで始まります\r\n";
}
else {
	print "$test2 はquで始まりません\r\n";
}
$re="ver";
# 変数展開
if ($test1 !~ /${re}$/i) {
	print "$test1 はverで終わりません\r\n";
}
else {
	print "$test1 はverで終わります\r\n";
}
=pod
	gim以外のフラグ:
	x: 正規表現中の空白/改行を無視
	s: . が改行にもマッチする
	o: 式展開を1回限りにする
=cut

print "\r\n\r\n";