#! /usr/local/bin/php
<?php

print "\r\nこれからファイル操作を試します\r\n\r\n";

print "> カレントディレクトリをホームに変更\r\n\r\n";
chdir(posix_getpwuid(posix_geteuid())["dir"]);

# ファイル/フォルダ/シンボリックリンクの作成

print "> Emptyという空フォルダを作成\r\n";
mkdir("Empty");

print "> Blankという空ファイルを作成\r\n";
$io=fopen("Blank","w");
	# 既にBlankが存在していたら内容が削除される
	# 削除したくない場合は,"w"を"r"や"a"にする
fclose($io);

print "> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n\r\n";
symlink("Blank","Empty/Symlink");
	# link("Blank","Empty/Link") とすると,ハードリンクが作成される

# 書込み

print "> Untitled.mdというMarkdownファイルを作成して書込み\r\n\r\n";
	# 既にUntitled.mdが存在すれば上書きされる
$io=fopen("Untitled.md","w");
fwrite($io,"# Header 1");
fclose($io);

# 移動/名称変更

print "> フォルダEmptyをPackageに名称変更\r\n";
rename("Empty","Package");
print "> Packageフォルダ内のSymlinkファイルをAliasに名称変更\r\n";
rename("Package/Symlink","Package/Alias");
print "> Untitled.mdを移動して,名称変更\r\n\r\n";
rename("Untitled.md","Package/Headers.md");

# 追記

print "> Markdownファイルに追記\r\n\r\n";
$io=fopen("Package/Headers.md","a");
fwrite($io,"\r\n## Header 2\r\n### Header 3");
fclose($io);

# 読込み

print "> Markdownファイルを読込み\r\n\r\n";
$io=fopen("Package/Headers.md","r");
print fread($io,filesize("Package/Headers.md"));
fclose($io);
print "\r\n\r\n";

# 再帰的にフォルダ作成

print "> フォルダを一気に作成\r\n\r\n";
mkdir("Package/Module/Submodule/Item",0777,TRUE);
	# $recursive=TRUEを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

# ファイル/フォルダの複製

print "> BlankとModuleを複製\r\n\r\n";
copy("Blank","Package/Blank");
system("cp -r Package/Module \"Package/Module Copy\"");

# ファイル/フォルダの削除

print "> ファイルBlankを削除\r\n";
unlink("Blank");

print "> シンボリックリンクAliasを削除\r\n";
unlink("Package/Alias");

print "> フォルダModuleを削除\r\n\r\n";
system("rm -r Package/Module");
	# 空のフォルダはrmdirで削除できる。空でない場合は削除できない。

# 状態を確認する関数

function check($pt) {

	$i = function($v){return $v;};

	print "   {$i( file_exists($pt) ? '存在しています' : '存在していません' )}\r\n";

	if (is_link($pt)) {
		print "   シンボリックリンクです\r\n";
		print "   リンク先: {$i(readlink($pt))}\r\n";
		if (is_file($pt)) {
			print "   リンク先はファイルです\r\n";
		}
		if (is_dir($pt)) {
			print "   リンク先はフォルダです\r\n";
		}
	}
	else {
		if (is_file($pt)) {
			print "   ファイルです\r\n";
		}
		if (is_dir($pt)) {
			print "   フォルダです\r\n";
		}
	}

	if (is_readable($pt)) {
		print "   読込可能です\r\n";
	}
	if (is_writable($pt)) {
		print "   書込可能です\r\n";
	}
	if (is_executable($pt)) {
		print "   実行可能です\r\n";
	}

	if (filesize($pt)==0) {
		print "   空です\r\n";
	}

}

# 権限を確認/変更

print "> 実行ファイルを作成します\r\n";
$io=fopen("Package/PHP.php","a");
fwrite($io,<<< PHPScript
#! /usr/local/bin/php
<?php
print "Hello world!";
?>
PHPScript
);
fclose($io);

print "> このファイルに対する現在の状態を確認\r\n";
check("Package/PHP.php");

print "> 読込/書込権限を剥奪\r\n";
chmod("Package/PHP.php",0044);

print "> 状態を確認\r\n";
check("Package/PHP.php");

print "> 読込/実行権限を付加\r\n";
chmod("Package/PHP.php",0544);

print "> 状態を確認\r\n";
check("Package/PHP.php");

/*
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
*/

print "> 実行\r\n";
passthru("Package/PHP.php");

print "\r\n\r\n";

?>