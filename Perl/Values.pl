#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

# スカラ
my $string = "パール";
my $lines = <<"Lines";

First line
Second line
Third line
Lines
=pod
	変数展開/式展開の仕方
	"The value is $val"
	"The value is ${val}"
	"The value is @{[$val*2]}"
	⚠︎ 変数展開はスカラでのみ可。それ以外は式展開を使う。
	⚠︎ シングルクオート不可。エスケープ文字も使えなくなる。
=cut
my $number = 6;
my $ud = undef;
# 配列,リスト
my @array = (1, "second", 3, 3.14);
# ハッシュ
my %hash = (
	a => 1,
	b => "second",
	c => 3,
	d => 3.14
);
# 範囲
$ran = 5..8;
# 関数 (サブルーチン)
sub cube {
	my $val = $_[0];
	return $val ** 3;
};
# 無名関数
my $func = sub {
	my $val = $_[0];
	return $val ** 2;
};

print "\r\n色々な値を試します\r\n";
print "\r\n文字列:${string}";
print "\r\n   長さ:@{[length($string)]}";
print "\r\n文字列2:\r\n${lines}";
print "\r\n数値:@{[$number]},@{[$func->($number)]},@{[&cube($number)]}";
print "\r\n未定義値:@{[$ud]}";
print "\r\n配列:\r\n@{[@array]}";
print "\r\n   2番目:@{[@array[2]]}";
print "\r\n   大きさ:@{[scalar(@array)]}";
print "\r\nハッシュ:\r\n@{[%hash]}";
print "\r\n   b= @{[$hash{b}]}";
print "\r\n   大きさ:@{[scalar(%hash)]}";
print "\r\n範囲:\r\n$ran";
print "\r\n無名関数:\r\n$func";

print "\r\n\r\n";