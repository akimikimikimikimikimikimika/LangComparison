#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

# Ruby

=begin
	複数行のコメント
	(ドキュメント)
=end

Dir.chdir("#{__dir__}/Ruby");

print """

こんにちは。私の名前はRuby。
""";
while true
	print """

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 正規表現を試す
7. ファイル操作を試す
8. ファイルパスを試す
9. 数学的演算を試す
a. 日付と時刻を試す
b. 文字列を試す
c. 文字列フォーマットを試す
d. クラスを試す
e. プロセス系を試す
f. コマンドライン引数を試す

0. 終了


""";
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
		system("./Math.rb");
	elsif action=="a"
		system("./DateTime.rb");
	elsif action=="b"
		system("./String.rb");
	elsif action=="c"
		system("./Sprintf.rb");
	elsif action=="d"
		system("./Class.rb");
	elsif action=="e"
		system("./Process.rb");
	elsif action=="f"
		system("./Arguments.rb このプログラムを直接実行してみよう。 \"ここにあるよ: Ruby/Arguments.rb\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"Ruby/Arguments.rb 引数1 引数2…\" \"\"  すると,引数1,引数2…が順に出力されます");
	else
		print """
指定したアクションは見つかりませんでした

""";
	end
end

!exit(0);


__END__
以下は全てコメントとなる