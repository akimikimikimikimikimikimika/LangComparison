#! /usr/local/bin/perl

print <<"Stdinout";
こんにちは。私の名前はPerl,即ち真珠です。
あなたのことを教えてください
Stdinout

print "あなたは...";
$aboutYou = <STDIN>;
chomp($aboutYou);

print <<"Stdinout";
あなたは $aboutYou ですね。わかりました。

これから幾つかの出力の仕方を披露しますね。
Stdinout
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