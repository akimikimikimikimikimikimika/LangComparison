#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

# Ruby

=begin
	複数行のコメント
	(ドキュメント)
=end

Dir.chdir("#{__dir__}/Ruby");

print "\r\n\r\n";

print "こんにちは。私の名前はRuby。";
while true
	print "\r\n\r\n何がしたい?\r\n\r\n";
	print "1. 標準入出力を試す\r\n";
	print "2. 色々な値を試す\r\n";
	print "3. 演算子を試す\r\n";
	print "4. 条件分岐を試す\r\n";
	print "5. 繰り返しを試す\r\n";
	print "6. 正規表現を試す\r\n";
	print "7. ファイル操作を試す\r\n";
	print "8. ファイルパスを試す\r\n";
	print "9. コマンドライン引数を試す\r\n";
	print "\r\n";
	print "0. 終了\r\n";
	print "\r\n";
	action = gets.chomp;
	print "\r\n\r\n\r\n";
	if action=="0"
		break
	elsif action=="1"
		system("./Stdinout.rb");
	elsif action=="2"
		system("./Values.rb");
	elsif action=="3"
		system("./Operators.rb");
	elsif action=="4"
		system("./Condition.rb");
	elsif action=="5"
		system("./Loop.rb");
	elsif action=="6"
		system("./RegExp.rb");
	elsif action=="7"
		system("./File.rb");
	elsif action=="8"
		system("./Path.rb");
	elsif action=="9"
		system("./Arguments.rb このプログラムを直接実行してみよう。 \"ここにあるよ: Ruby/Arguments.rb\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"Ruby/Arguments.rb 引数1 引数2…\" \"\"  すると,引数1,引数2…が順に出力されます");
	else
		print "指定したアクションは見つかりませんでした\r\n\r\n";
	end
end

!exit(0);