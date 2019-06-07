#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

# Perl

=comment
	複数行のコメント
	(ドキュメント)
=cut

use Cwd;
use File::Basename;

chdir Cwd::realpath(dirname($0));

print <<"Welcome";

こんにちは。私の名前はPerl。
Welcome
while (1) {
	print <<"Menu";

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 数学的演算を試す
7. 文字列を試す
8. 文字列フォーマットを試す
9. 正規表現を試す
a. 日付と時刻を試す
b. クラスを試す
c. 例外処理を試す
d. ファイル操作を試す
e. ファイルパスを試す
f. プロセス系を試す
g. スレッドを試す
h. コマンドライン引数を試す

0. 終了


Menu
	$action = <STDIN>;
	chomp($action);
	print "\r\n\r\n\r\n";
	if ($action eq "0") {
		last;
	}
	elsif ($action eq "1") {
		system("./Stdinout.pl");
	}
	elsif ($action eq "2") {
		system("./Values.pl");
	}
	elsif ($action eq "3") {
		system("./Operators.pl");
	}
	elsif ($action eq "4") {
		system("./Condition.pl");
	}
	elsif ($action eq "5") {
		system("./Loop.pl");
	}
	elsif ($action eq "6") {
		system("./Math.pl");
	}
	elsif ($action eq "7") {
		system("./String.pl");
	}
	elsif ($action eq "8") {
		system("./Sprintf.pl");
	}
	elsif ($action eq "9") {
		system("./RegExp.pl");
	}
	elsif ($action eq "a") {
		system("./DateTime.pl");
	}
	elsif ($action eq "b") {
		system("./Class.pl");
	}
	elsif ($action eq "c") {
		system("./Error.pl");
	}
	elsif ($action eq "d") {
		system("./File.pl");
	}
	elsif ($action eq "e") {
		system("./Path.pl");
	}
	elsif ($action eq "f") {
		system("./Process.pl");
	}
	elsif ($action eq "g") {
		system("./Thread.pl");
	}
	elsif ($action eq "h") {
		system("./Arguments.pl このプログラムを直接実行してみよう。 \"ここにあるよ: Perl/Arguments.pl\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"Perl/Arguments.pl 引数1 引数2…\" \"\"  すると,引数1,引数2…が順に出力されます");
	}
	else {
		print <<"Error";
指定したアクションは見つかりませんでした

Error
	}
}

exit(0);