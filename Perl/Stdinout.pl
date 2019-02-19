#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "こんにちは。私の名前はPerl,即ち真珠です。\n";
print "あなたのことを教えてください\n";
$aboutYou = <STDIN>;
chomp($aboutYou);
print "\nあなたは $aboutYou ですね。わかりました。\n\n";