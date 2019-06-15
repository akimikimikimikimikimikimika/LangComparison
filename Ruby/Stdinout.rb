#! /usr/bin/env ruby

print """
こんにちは。私の名前はRuby,即ち紅玉です。
あなたのことを教えてください
""";

print "あなたは...";
aboutYou = gets.chomp;

print """
あなたは #{aboutYou} ですね。わかりました。

これから幾つかの出力の仕方を披露しますね。
""";
puts "後ろに改行を付けます";
print "後ろに改行を付けません。";
p "型のよくわかる出力です";
p true;
printf "数値などを文字列形式にフォーマットできます: %f %f\r\n", 3.14, 2.71;
	# printf = sprintf (フォーマット) + print (出力)
print "それから...\r\n";
STDOUT.print "こんな出力も可能です。改行しません。";
STDERR.print "たまにはエラーも出したくなります。";
print "入力してみて (改行してからCtrl+Dで終了)\r\n";
STDIN.read;
print "以上です\r\n";

print "\r\n\r\n";