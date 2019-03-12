#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

# Perl

=pod
	複数行のコメント
	(ドキュメント)
=cut

use Cwd;
chdir "@{[Cwd::realpath(dirname($0))]}/Perl";

print "\r\n\r\n";

print "こんにちは。私の名前はPerl。";
while (1) {
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
		system("./RegExp.pl");
	}
	elsif ($action eq "7") {
		system("./File.pl");
	}
	elsif ($action eq "8") {
		system("./Path.pl");
	}
	elsif ($action eq "9") {
		system("./Arguments.pl このプログラムを直接実行してみよう。 \"ここにあるよ: Perl/Arguments.pl\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"Perl/Arguments.pl 引数1 引数2…\" \"\"  すると,引数1,引数2…が順に出力されます");
	}
	else {
		print "指定したアクションは見つかりませんでした\r\n\r\n";
	}
}

exit(0);