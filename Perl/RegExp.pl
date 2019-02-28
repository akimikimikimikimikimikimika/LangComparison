#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "\nこれから正規表現を試します\n\n";

print "\n分割と結合\n";
$test4="a-b-c";
print "$test4 → ";
@arr=split(/-/,$test4);
$test4=join(".",@arr);
print "$test4\n";


print "\n置換\n";

$text="テキスト";
print "$text → "; # テキスト
$text =~ s/キ/ク/;
print "$text\n"; # テクスト

# eフラグを付加すれば,演算可能
print "演算: ";
$bh = "HEX2BIN";
print "$bh → "; # HEX2BIN
$bh =~ s/([0-9])/$1*2/e;
print "$bh\n"; # HEX4BIN

print "\n変換\n";

$test3="IllUsTrAtE";
print "$test3 → "; # IllUsTrAtE
$test3 =~ tr/a-z/A-Z/;
print "$test3\n"; # ILLUSTRATE

# c: 検索条件以外の文字を置換
$test3="IllUsTrAtE";
print "cフラグ: ";
print "$test3 → "; # IllUsTrAtE
$test3 =~ tr/a-z/*/c;
print "$test3\n"; # *ll*s*r*t*

# d: 検索条件以外の文字を削除
$test3="IllUsTrAtE";
print "dフラグ: ";
print "$test3 → "; # IllUsTrAtE
$test3 =~ tr/A-Z//d;
print "$test3\n"; # llsrt

# 連続した文字を縮約
$test3="IllUsTrAtE";
print "sフラグ: ";
print "$test3 → "; # IllUsTrAtE
$test3 =~ tr/a-z/A-Z/s;
print "$test3\n"; # ILUsTrAtE

print "\nマッチの確認\n";
$test1="qUiVeR";
$test2="ShIvEr";
if ($test1 =~ /^qu/i) {
	print "$test1 はquで始まります\n";
}
else {
	print "$test1 はquで始まりません\n";
}
# パターンを記号で囲んで,mを前に付加するなら,様々な記号で正規表現は表せる
if ($test2 =~ m{^qu}i) {
	print "$test2 はquで始まります\n";
}
else {
	print "$test2 はquで始まりません\n";
}
$re="ver";
# 変数展開
if ($test1 !~ /${re}$/i) {
	print "$test1 はverで終わりません\n";
}
else {
	print "$test1 はverで終わります\n";
}
=pod
	gim以外のフラグ:
	x: 正規表現中の空白/改行を無視
	s: . が改行にもマッチする
	o: 式展開を1回限りにする
=cut