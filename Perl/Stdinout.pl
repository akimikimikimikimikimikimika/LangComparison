#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "こんにちは。私の名前はPerl,即ち真珠です。\r\n";
print "あなたのことを教えてください\r\n";
$aboutYou = <STDIN>;
chomp($aboutYou);
print "\r\nあなたは $aboutYou ですね。わかりました。\r\n\r\n";
print "これから幾つかの出力の仕方を披露しますね。\r\n";
print "後ろに改行を付けません。";
printf "数値などを文字列形式にフォーマットできます: %f %f\r\n", 3.14, 2.71;
	# printf = sprintf (フォーマット) + print (出力)
print "それから...\r\n";
print STDOUT "こんな出力も可能です。改行しません。";
print STDERR "たまにはエラーも出したくなります";
print "入力してみて\r\n";
<STDIN>;
print "以上です\r\n";

print "\r\n\r\n";