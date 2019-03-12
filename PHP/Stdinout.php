#! /usr/local/bin/php
<?php

print "こんにちは。私の名前はPHPです。\r\n";
print "あなたのことを教えてください\r\n";
$aboutYou = trim(fgets(STDIN));
print "あなたは ".$aboutYou." ですね。わかりました。\r\n";
print "これから幾つかの出力の仕方を披露しますね。\r\n";
echo "後ろに改行を付けません。";
print "後ろに改行を付けません。";

?>
直接入力するだけで出力するので,非常に便利です。
<?="こういう出力の仕方もあります。"; ?>

<?php

printf("数値などを文字列形式にフォーマットできます: %f %f\r\n", 3.14, 2.71);
	# printf = sprintf (フォーマット) + print (出力)
print "それから...\r\n";
fputs(STDOUT,"こんな出力も可能です。改行しません。");
fwrite(STDOUT,"こんな出力も可能です。改行しません。");
$stdout=fopen("php://stdout","w");
fputs($stdout,"こんな出力も可能です。改行しません。");
fputs(STDERR,"たまにはエラーも出したくなります。");
print "入力してみて\r\n";
fgets(STDIN);
print "以上です\r\n";

print "\r\n\r\n";

?>