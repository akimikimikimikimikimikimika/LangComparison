#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

# Perl

=pod
	複数行のコメント
	(ドキュメント)
=cut

$dir=`dirname $0`;
chomp($dir);
print $dir;

print "こんにちは。私の名前はPerl。";
while (1) {
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
	$action = <STDIN>;
	chomp($action);
	print "\n\n\n";
	if ($action eq "1") {
		system("$dir/Perl/Stdinout.pl");
	}
	elsif ($action eq "2") {
		system("$dir/Perl/Values.pl");
	}
	elsif ($action eq "3") {
		system("$dir/Perl/Operators.pl");
	}
	elsif ($action eq "4") {
		system("$dir/Perl/Condition.pl");
	}
	elsif ($action eq "5") {
		system("$dir/Perl/Loop.pl");
	}
	elsif ($action eq "6") {
		system("$dir/Perl/RegExp.pl");
	}
	elsif ($action eq "7") {
		system("$dir/Perl/Arguments.pl このプログラムを直接実行してみよう。 \"ここにあるよ: Perl/Arguments.pl\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"Perl/Arguments.pl 引数1 引数2 ...\" \"\"  すると,引数1,引数2...が順に出力されます");
	}
	elsif ($action eq "0") {
		last;
	}
	else {
		print "指定したアクションは見つかりませんでした\n\n";
	}
}
exit(0);