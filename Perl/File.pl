#! /usr/local/bin/perl

use File::Copy; # copy,moveに必要
use File::Path; # mkpath,rmtreeに必要

print "\r\nこれからファイル操作を試します\r\n\r\n";

print "> カレントディレクトリをホームに変更\r\n\r\n";
chdir $ENV{"HOME"};

# ファイル/フォルダ/シンボリックリンクの作成

print "> Emptyという空フォルダを作成\r\n";
mkdir Empty;

print "> Blankという空ファイルを作成\r\n";
open(FH1,">","Blank");
	# 既にBlankが存在していたら内容が削除される
	# 削除したくない場合は,">"を"<"や">>"にする
close(FH1);
	# FHはファイルハンドルオブジェクト。慣例的に大文字の変数名にするみたい

print "> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n\r\n";
symlink "Blank","Empty/Symlink";
	# link "Blank","Empty/Link" とすると,ハードリンクが作成される

# 書込み

print "> Untitled.mdというMarkdownファイルを作成して書込み\r\n\r\n";
	# 既にUntitled.mdが存在すれば上書きされる
open(FH2,">","Untitled.md");
print FH2 "# Header 1";
close(FH2);

# 移動/名称変更

print "> フォルダEmptyをPackageに名称変更\r\n";
move "Empty","Package"; # 或いはrename
print "> Packageフォルダ内のSymlinkファイルをAliasに名称変更\r\n";
move "Package/Symlink","Package/Alias"; # 或いはrename
print "> Untitled.mdを移動して,名称変更\r\n\r\n";
move "Untitled.md","Package/Headers.md"; # 或いはrename
	# renameでファイル移動するとエラーになる場合があるみたい

# 追記

print "> Markdownファイルに追記\r\n\r\n";
open(FH3,">>","Package/Headers.md");
print FH3 "\r\n## Header 2\r\n### Header 3";
close(FH3);

# 読込み

print "> Markdownファイルを読込み\r\n\r\n";
open(FH4,"<","Package/Headers.md");
print join("",<FH4>);
close(FH4);
print "\r\n\r\n";

# 再帰的にフォルダ作成

print "> フォルダを一気に作成\r\n\r\n";
mkpath "Package/Module/Submodule/Item";
	# mkdirの代わりにmkpathを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

# ファイル/フォルダの複製

print "> BlankとModuleを複製\r\n\r\n";
copy "Blank","Package/Blank";
copy "Package/Module","Package/Module Copy";

# ファイル/フォルダの削除

print "> ファイルBlankを削除\r\n";
unlink "Blank";

print "> シンボリックリンクAliasを削除\r\n";
unlink "Package/Alias";

print "> フォルダModuleを削除\r\n\r\n";
rmtree "Package/Module";
	# 空のフォルダはrmdirで削除できる。空でない場合は削除できない。
	# rmtreeを使えば,空でなくても削除できる

# 状態を確認する関数

sub check{

	print "   @{[ -e $_[0] ? '存在しています' : '存在していません' ]}\r\n";

	if ( -l $_[0] ) {
		print "   シンボリックリンクです\r\n";
		print "   リンク先: @{[readlink($_[0])]}\r\n";
		print "   リンク先はファイルです\r\n" if -f $_[0];
		print "   リンク先はフォルダです\r\n" if -d $_[0];
	}
	else {
		print "   ファイルです\r\n" if -f $_[0];
		print "   フォルダです\r\n" if -d $_[0];
	}

	print "   読込可能です\r\n" if -r $_[0];
	print "   書込可能です\r\n" if -w $_[0];
	print "   実行可能です\r\n" if -x $_[0];

	print "   空です\r\n" if ! -s $_[0];

}

# 権限を確認/変更

print "> 実行ファイルを作成します\r\n";
open(FH5,">>","Package/Perl.pl");
print FH5 <<"Perl Script";
#! /usr/local/bin/perl

print "Hello world!";
Perl Script
close(FH5);

print "> このファイルに対する現在の状態を確認\r\n";
&check("Package/Perl.pl");

print "> 読込/書込権限を剥奪\r\n";
chmod 0044,"Package/Perl.pl";

print "> 状態を確認\r\n";
&check("Package/Perl.pl");

print "> 読込/実行権限を付加\r\n";
chmod 0544,"Package/Perl.pl";

print "> 状態を確認\r\n";
&check("Package/Perl.pl");

=pod
	chmodは数値により権限を指定する
		4: 読込可能 (Readable)
		2: 書込可能 (Writable)
		1: 実行可能 (eXecutable)
	これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
	Perlでは8進数で表記するために,前に0を付加する
	e.g. chmod 0754
		ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
		ゲストは 5 = 4 + 1 だから,読込可能,実行可能
		その他は 4 だから,読込のみ可能
=cut

print "> 実行\r\n";
system("Package/Perl.pl");

print "\r\n\r\n";