#! /usr/bin/env php
<?php

require_once("Utility.php");

function Files() {

	pnl(1);

	println("これからファイル操作を試します",2);

	println("> カレントディレクトリをホームに変更",2);
	chdir(posix_getpwuid(posix_geteuid())["dir"]);

	# ファイル/フォルダ/シンボリックリンクの作成

	println("> Emptyという空フォルダを作成");
	mkdir("Empty");

	println("> Blankという空ファイルを作成");
	$io=fopen("Blank","w");
		# 既にBlankが存在していたら内容が削除される
		# 削除したくない場合は,"w"を"r"や"a"にする
	fclose($io);

	println("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成",2);
	symlink("Blank","Empty/Symlink");
		# link("Blank","Empty/Link") とすると,ハードリンクが作成される

	# 書込み

	println("> Untitled.mdというMarkdownファイルを作成して書込み",2);
		# 既にUntitled.mdが存在すれば上書きされる
	$io=fopen("Untitled.md","w");
	fwrite($io,"# Header 1");
	fclose($io);

	# 移動/名称変更

	println("> フォルダEmptyをPackageに名称変更");
	rename("Empty","Package");
	println("> Packageフォルダ内のSymlinkファイルをAliasに名称変更");
	rename("Package/Symlink","Package/Alias");
	println("> Untitled.mdを移動して,名称変更",2);
	rename("Untitled.md","Package/Headers.md");

	# 追記

	println("> Markdownファイルに追記",2);
	$io=fopen("Package/Headers.md","a");
	fwrite($io,nl()."## Header 2".nl()."### Header 3");
	fclose($io);

	# 読込み

	println("> Markdownファイルを読込み",2);
	$io=fopen("Package/Headers.md","r");
	println(fread($io,filesize("Package/Headers.md")),3);
	fclose($io);

	# 再帰的にフォルダ作成

	println("> フォルダを一気に作成",2);
	mkdir("Package/Module/Submodule/Item",0777,TRUE);
		# $recursive=TRUEを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

	# ファイル/フォルダの複製

	println("> BlankとModuleを複製",2);
	copy("Blank","Package/Blank");
	system("cp -r Package/Module \"Package/Module Copy\"");

	# ファイル/フォルダの削除

	println("> ファイルBlankを削除");
	upnlink("Blank");

	println("> シンボリックリンクAliasを削除");
	upnlink("Package/Alias");

	println("> フォルダModuleを削除",2);
	system("rm -r Package/Module");
		# 空のフォルダはrmdirで削除できる。空でない場合は削除できない。

	# 権限を確認/変更

	println("> 実行ファイルを作成します");
	$io=fopen("Package/PHP.php","a");
	fwrite($io,clean(<<< PHPScript
		#! /usr/bin/env php
		<?php
		print "Hello world!";
		?>
	PHPScript)
	);
	fclose($io);

	println("> このファイルに対する現在の状態を確認");
	check("Package/PHP.php");

	println("> 読込/書込権限を剥奪");
	chmod("Package/PHP.php",0044);

	println("> 状態を確認");
	check("Package/PHP.php");

	println("> 読込/実行権限を付加");
	chmod("Package/PHP.php",0544);

	println("> 状態を確認");
	check("Package/PHP.php");

	/*
		chmodは数値により権限を指定する
			4: 読込可能 (Readable)
			2: 書込可能 (Writable)
			1: 実行可能 (eXecutable)
		これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
		PHPでは8進数で表記するために,前に0を付加する
		e.g. chmod($somefile,0754)
			ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
			ゲストは 5 = 4 + 1 だから,読込可能,実行可能
			その他は 4 だから,読込のみ可能
	*/

	println("> 実行");
	passthru("Package/PHP.php");

	pnl(2);

}

# 状態を確認する関数

function check($pt) {
	global $i;

	println("   {$i( file_exists($pt) ? '存在しています' : '存在していません' )}");

	if (is_link($pt)) {
		println("   シンボリックリンクです");
		println("   リンク先: {$i(readlink($pt))}");
		if (is_file($pt)) println("   リンク先はファイルです");
		if (is_dir($pt)) println("   リンク先はフォルダです");
	}
	else {
		if (is_file($pt)) println("   ファイルです");
		if (is_dir($pt)) println("   フォルダです");
	}

	if (is_readable($pt)) println("   読込可能です");
	if (is_writable($pt)) println("   書込可能です");
	if (is_executable($pt)) println("   実行可能です");

	if (filesize($pt)==0) println("   空です");

}

if (running_directly(__FILE__)) Files();

?>