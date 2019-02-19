#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

# スカラ
my $string = "STRING";
my $number = 6;
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
    return $val ** 2;
};
# 無名関数
my $func = sub {
    my $val = $_[0];
    return $val ** 3;
};

print "\n色々な値を試します\n";
print "\n文字列:".$string;
print "\n数値:".$number.",".&cube($number).$func->($number);
print "\n配列:\n";
print @array;
print "\n   2番目:".@array[2];
print "\nハッシュ:\n";
print %hash;
print "\n   b= ".%hash{b};
print "\n範囲:\n";
print $ran;
print "\n無名関数:\n";
print $func;
print "\n";