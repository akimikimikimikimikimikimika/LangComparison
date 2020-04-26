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

/*

	外部コマンドの実行

	• &を前置するパラメータは,その変数に値が書き込まれる
	• ?を後置するパラメータは,省略可能であることを示す
	• 文字列型: "tar -tf archive\ file.tar" のようなもの
	• 配列型: ["tar","-tf","archive file.tar"] のようなもの

	passthru($cmdStr,&$code?) -> void
		• stdin,stdout,stderr はインターセプトされない
		• 実行完了まで passthru より先には進まない
		• $cmdStr : 実行内容 (文字列型)
		• $code : 終了コード

	exec($cmdStr,&$stdOut?,&$code?) -> string
		• stdout がインターセプトされる
		• stdin,stderr はインターセプトされない
		• 実行完了まで exec より先には進まない
		• $cmdStr : 実行内容 (文字列型)
		• $stdOut : stdout の1行ごとの配列 (改行は含まない)
		• $code : 終了コード
		• 戻り値 : stdout の最後の行

	system($cmdStr,&$code?) -> string
		• stdin,stdout,stderr はインターセプトされない
		• 実行完了まで system より先には進まない
		• $cmdStr : 実行内容 (文字列型)
		• $code : 終了コード
		• 戻り値 : stdout の最後の行

	shell_exec($cmdStr) -> string
		• stdout がインターセプトされる
		• stdin,stderr はインターセプトされない
		• 実行完了まで shell_exec より先には進まない
		• $cmdStr : 実行内容 (文字列型)
		• 戻り値 : stdout 全体
		• シェルを介して実行される ($cmdStr の前に sh -c などが付加されて実行する)

	popen($cmdStr,"r") -> handler
		• stdout がインターセプトされる
		• stdin,stderr はインターセプトされない
		• popenの時点ではプロセスは終了していないので, fclose や pclose を用いて終了を待つ必要がある
		• $cmdStr : 実行内容 (文字列型)
		• 戻り値 : 読み込みハンドラ
		• 使い方 (出力を1024バイト分読み取る)
			$io=popen("コマンド","r");
			$stdOut=fread($io,1024);
			fclose($io);
		• 時間をおいて複数回出力されるおそれがある場合,その回数だけ fclose の前に fread を用意しておかないと全て受け取れない。逆に, fread が多すぎると,永遠に受け取りを試み続ける。

	popen($cmdStr,"w") -> handler
		• stdin がインターセプトされる
		• stdout,stderr はインターセプトされない
		• popen の時点ではプロセスは終了していないので, pclose を用いて終了を待つ必要がある
		• $cmdStr : 実行内容 (文字列型)
		• 戻り値 : 書き込みハンドラ
		• 使い方
			$io=popen("コマンド","w");
			fwrite($io,$stdIn);
			fclose($io);

	proc_open($cmd,$desc,&$pipes,$cwd?,$env?) -> resource
		• stdin,stdout,stderr はインターセプトされない ($descで変更可能)
		• proc_open の時点ではプロセスは終了していないので, proc_close を用いて終了を待つ必要がある
		• $cmd : 実行内容 (文字列型/配列型)
		• $desc : IOの制御を指定する配列
			[stdinの指定,stdoutの指定,stderrの指定]
			• $desc[0]
				• ["pipe","r"] … $pipesからハンドラで文字列を書き込む
				• ["file","php://stdin","r"] … 親プロセスのstdinに接続
				• ["file","パス","r"] … ファイルから読み込む
				• ["file","/dev/null","r"] … 空の入力
				• ハンドラ … 別のプロセスやfopenで開いたファイルハンドラから読み込む (パイプ)
			• $desc[1],$desc[2]
				• ["pipe","w"] … $pipesからハンドラで文字列を受け取れる
				• ["file","php://stdout","w"] … 親プロセスのstdoutに接続
				• ["file","php://stderr","w"] … 親プロセスのstderrに接続
				• ["file","パス","w"] … ファイルに書き込む
				• ["file","/dev/null","w"] … 出力を破棄
				• ハンドラ … 別のプロセスやfopenで開いたファイルハンドラに書き込む (パイプ)
		• $pipes : pipeにしたIOのハンドラの配列
			• $pipes[0] がstdinの書き込みハンドラ, $pipes[1],$pipes[2] がstdout,stderr の読み込みハンドラ
			• popenの時と同じように読み込みや書き込むができる
			• $pipes のハンドラを別の proc_open の $desc に渡せば2つのプロセスの間でパイプが作れる
		• $cwd : カレントディレクトリを指定
			指定しなければ現在のカレントディレクトリを使用
		• $env : 環境変数の連想配列
			指定しなければ現在の環境変数を使用
		• 戻り値 : リソース
			実行に失敗すれば false が返される
			終了後に必ず proc_close をする。proc_closeから終了コードが得られる。
			proc_get_status よりプロセスの情報が得られる
		• 使い方
			$res=proc_open(
				["コマンド","arg1","arg2"],
				[0=>["pipe","w"],1=>STDOUT,2=>["file","/dev/null","w"]],
				$pipes
			);
			if (is_resource($res)) {
				fwrite($pipes[0],$stdIn);
				fclose($pipes[0]);
				$code=proc_close($res);
			}
		• proc_get_status(リソース) ->
			[
				command=>string // 実行コマンド
				pid=>int // プロセスID
				exitcode=>int // 終了コード
				running=>bool // まだ実行中かどうか
			]

	eval($phpSource) -> value?
		• $phpSource に記載したPHPソースを実行する
		• ソース中で return 文があればその値がevalから返される。
		• 外の変数をeval内で参照したり,eval内の変数を外から参照することもできる。

*/

if (running_directly(__FILE__)) Files();

?>