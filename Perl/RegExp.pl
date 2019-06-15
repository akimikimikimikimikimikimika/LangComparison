#! /usr/bin/env perl

print "\r\nこれから正規表現を試します\r\n\r\n";

$text="The Quick Brown Fox Jumps Over The Lazy Dog";
print "$text → \r\n";

print "\r\nマッチの確認\r\n";
if ($test1 =~ /fox jumps/i) {
	print "狐が飛んでいます\r\n";
}
else {
	print "狐は飛んでいません\r\n";
}
# パターンを記号で囲んで,mを前に付加するなら,様々な記号で正規表現は表せる。スラッシュをエスケープする必要がなくなるので,便利か。
if ($test2 =~ m{dog jumps}i) {
	print "犬が飛んでいます\r\n";
}
else {
	print "犬は飛んでいません\r\n";
}
$color="brown";
# 変数展開
if ($test1 !~ /${color}/i) {
	print "茶色の生物なんてここにいない\r\n";
}
else {
	print "茶色い生物がいる\r\n";
}

print "\r\n置換\r\n";

$replaced = $text; # 変数が書き換えられてしまうため,コピー
$replaced =~ s/([a-z]+)o([a-z]+)/« \1ö\2 »/;
print "gフラグなし:\r\n$replaced\r\n";
$replaced=$text;
$replaced =~ s/([a-z]+)o([a-z]+)/« \1ö\2 »/g;
print "gフラグあり:\r\n$replaced\r\n";

print "\r\n分割と結合\r\n";
@array=split(/(the|s)? /i,$text);
$arranged=join("_",@array);
print "@array\r\n";
print "$arranged\r\n";

# eフラグを付加すれば,演算可能
print "演算: ";
$hb = "HEX2BIN";
print "$hb → "; # HEX2BIN
$hb =~ s/([0-9])/$1*2/e;
print "$hb\r\n"; # HEX4BIN

print "\r\n変換\r\n";

$text="IllUsTrAtE";
print "$text → "; # IllUsTrAtE
$text =~ tr/a-z/A-Z/;
print "$text\r\n"; # ILLUSTRATE

# c: 検索条件以外の文字を置換
$text="IllUsTrAtE";
print "cフラグ: ";
print "$text → "; # IllUsTrAtE
$text =~ tr/a-z/*/c;
print "$text\r\n"; # *ll*s*r*t*

# d: 検索条件以外の文字を削除
$text="IllUsTrAtE";
print "dフラグ: ";
print "$text → "; # IllUsTrAtE
$text =~ tr/A-Z//d;
print "$text\r\n"; # llsrt

# s: 連続した文字を縮約
$text="IllUsTrAtE";
print "sフラグ: ";
print "$text → "; # IllUsTrAtE
$text =~ tr/a-z/A-Z/s;
print "$text\r\n"; # ILUsTrAtE

=comment
	gim以外のフラグ:
	x: 正規表現中の空白/改行を無視
	s: . が改行にもマッチする
	o: 式展開を1回限りにする
=cut

print "\r\n\r\n";