#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

# Ruby

=begin
	複数行のコメント
	(ドキュメント)
=end

print "こんにちは。私の名前はRuby。";
while true
	print "\n\n何がしたい?\n\n";
	print "1. 標準入出力を試す\n";
	print "2. 色々な値を試す\n";
	print "3. 演算子を試す\n";
	print "4. 条件分岐を試す\n";
	print "5. 繰り返しを試す\n";
	print "6. 正規表現を試す\n";
	print "7. コマンドライン引数を試す\n";
	print "\n";
	print "0. 終了\n";
	print "\n";
	action = gets.chomp;
	print "\n\n\n";
	if action=="1"
		system("Ruby/Stdinout.rb");
	elsif action=="2"
		system("Ruby/Values.rb");
	elsif action=="3"
		system("Ruby/Operators.rb");
	elsif action=="4"
		system("Ruby/Condition.rb");
	elsif action=="5"
		system("Ruby/Loop.rb");
	elsif action=="6"
		system("Ruby/RegExp.rb");
	elsif action=="7"
		system("Ruby/Arguments.rb このプログラムを直接実行してみよう。 \"ここにあるよ: Ruby/Arguments.rb\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"Ruby/Arguments.rb 引数1 引数2…\" \"\"  すると,引数1,引数2…が順に出力されます");
	elsif action=="0"
		break
	else
		print "指定したアクションは見つかりませんでした\n\n";
	end
end
!exit(0);