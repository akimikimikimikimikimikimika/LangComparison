#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import shutil
import os
import subprocess
from Utility import *

def Files():

	prints("これからファイル操作を試します",nl(2))

	prints("> カレントディレクトリをホームに変更",nl(2))
	os.chdir(os.path.expanduser("~"))

	# ファイル/フォルダ/シンボリックリンクの作成

	prints("> Emptyという空フォルダを作成",nl(1))
	os.mkdir("Empty")

	prints("> Blankという空ファイルを作成",nl(1))
	io=open("Blank","w")
	io.close()

	prints("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成",nl(2))
	os.symlink("Blank","Empty/Symlink")
		# os.link("Blank","Empty/Link") とすると,ハードリンクが作成される

	# 書込み

	prints("> Untitled.mdというMarkdownファイルを作成して書込み",nl(2))
	io=open("Untitled.md","w")
	io.write("# Header 1")
	io.close()

	# 移動/名称変更

	prints("> フォルダEmptyをPackageに名称変更",nl(1))
	shutil.move("Empty","Package") # 或いはos.rename
	prints("> Packageフォルダ内のSymlinkファイルをAliasに名称変更",nl(1))
	shutil.move("Package/Symlink","Package/Alias") # 或いはos.rename
	prints("> Untitled.mdを移動して,名称変更",nl(2))
	shutil.move("Untitled.md","Package/Headers.md") # 或いはos.rename
		# os.renameでファイル移動するとエラーになる場合があるみたい

	# 追記

	prints("> Markdownファイルに追記",nl(2))
	io=open("Package/Headers.md","a")
	io.write("\r\n## Header 2\r\n### Header 3")
	io.close()

	# 読込み

	prints("> Markdownファイルを読込み",nl(2))
	io=open("Package/Headers.md","r")
	print(io.read())
	io.close()

	pnl(2)

	# 再帰的にフォルダ作成

	prints("> フォルダを一気に作成",nl(2))
	os.makedirs("Package/Module/Submodule/Item")
		# os.mkdirの代わりにos.makedirsを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

	# ファイル/フォルダの複製

	prints("> BlankとModuleを複製",nl(2))
	shutil.copy("Blank","Package/Blank")
	shutil.copytree("Package/Module","Package/Module Copy")
		# shutil.copytree を用いることで,フォルダ内の内容もまとめて複製できる

	# ファイル/フォルダの削除

	prints("> ファイルBlankを削除",nl(1))
	os.remove("Blank") # 或いは os.unlink

	prints("> シンボリックリンクAliasを削除",nl(1))
	os.remove("Package/Alias") # 或いは os.unlink

	prints("> フォルダModuleを削除",nl(2))
	shutil.rmtree("Package/Module")
		# 空のフォルダはos.rmdirで削除できる。空でない場合は削除できない。
		# shutil.rmtree を使えば,空でなくても削除できる

	# 権限を確認/変更

	print("> 実行ファイルを作成します")
	io=open("Package/Python.py","w")
	io.write(clean("""#! /usr/bin/env python3
	# -*- coding: utf-8 -*-

	print("Hello world!")
	"""))
	io.close()

	print("> このファイルに対する現在の状態を確認")
	check("Package/Python.py")

	print("> 読込/書込権限を剥奪")
	os.chmod("Package/Python.py",0o044)

	print("> 状態を確認")
	check("Package/Python.py")

	print("> 読込/実行権限を付加")
	os.chmod("Package/Python.py",0o544)

	print("> 状態を確認")
	check("Package/Python.py")

	'''
		os.chmodは数値により権限を指定する
			4: 読込可能 (Readable)
			2: 書込可能 (Writable)
			1: 実行可能 (eXecutable)
		これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
		Pythonでは8進数で表記するために,前に0oを付加する
		e.g. os.chmod(somefile,0o754)
			ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
			ゲストは 5 = 4 + 1 だから,読込可能,実行可能
			その他は 4 だから,読込のみ可能
	'''

	print("> 実行")
	rtn=subprocess.call("Package/Python.py")
		# callの戻り値はコマンドのステータスコードであり,それを受け取らないと標準出力としてステータスコードが表示されてしまう

	pnl(2)

# 状態を確認する関数
def check(pt):
	if os.path.exists(pt): # 或いは　os.access(pt,os.F_OK)
		print("   存在しています")
	else:
		print("   存在していません")

	if os.path.islink(pt):
		print("   シンボリックリンクです")
		print(f"   リンク先: {os.readlink(pt)}")
		if os.path.isfile(pt):
			print("   リンク先はファイルです")
		if os.path.isdir(pt):
			print("   リンク先はフォルダです")
	else:
		if os.path.isfile(pt):
			print("   ファイルです")
		if os.path.isdir(pt):
			print("   フォルダです")
	if os.access(pt,os.R_OK):
		print("   読込可能です")
	if os.access(pt,os.W_OK):
		print("   書込可能です")
	if os.access(pt,os.X_OK):
		print("   実行可能です")

	if os.path.getsize(pt)==0:
		print("   空です")

"""

	subprocess.run(cmd,options) -> CompletedProcess
		• stdin,stdout,stderr はインターセプトされない (optionsで変更可能)
		• 実行完了まで run より先には進まない
		• cmd : 実行内容
			通常は配列型
			shell=True の場合は文字列型
		• options : オプション
			• cwd=<str>
				カレントディレクトリを変更する
			• env=<dict>
				環境変数を変更する
			• shell=<bool>
				shell=True でシェルを介して実行する (あまりお勧めされていない)
			• check=<bool>
				check=True で終了コードが0でない場合にエラーを送出する
			• timeout=<int>
				制限時間を設けることができる
			• stdin,stdout,stderr=<int>
				IOの制御を指定でき,これらの値が有効である
				• None
					親プロセスの入出力に接続
				• subprocess.PIPE
					パイプを開くことで,直接文字列を読み出し/書き込みしたり,別のプロセスに渡してプロセス間にパイプを設けることができる
					stdout,stderr は返値の CompletedProcess から受け取れる
				• subprocess.DEVNULL
					stdinに対しては空の入力
					stdout,stderrに対しては出力の破棄を意味する
				• subprocess.STDOUT
					stderrにのみ有効な値で,stderrの内容がstdoutに統合される
				• ファイルハンドラ
					指定したファイルに書き出します
			• input=<bytearray>
				stdin に subprocess.PIPE を指定した場合に渡す入力を指定する
				文字列ではなくバイトオブジェクトであることに注意
		• 戻り値 : CompletedProcess オブジェクト
			• args … 実行内容の配列か文字列
			• returncode … 終了コード
				異常終了の場合は負の値になる
			• stdout,stderr
				subprocess.PIPE を指定した場合にそれらの内容が取得できるbytearrayオブジェクト

	subprocess.Popen(cmd,options) -> Popen
		• stdin,stdout,stderr はインターセプトされない (optionsで変更可能)
		• Popenオブジェクトのコンストラクタ
		• Popen の時点ではプロセスは終了していないので, wait() や communicate() を用いて終了を待つ必要がある
		• subprocess.run も Popenが裏で利用されている
		• cmd : 実行内容
			通常は配列型
			shell=True の場合は文字列型
		• cwd=<str>
		• env=<dict>
		• shell=<bool>
		• stdin,stdout,stderr=<int>
		• 戻り値 : Popen オブジェクト
			• args … 実行内容の配列か文字列
			• pid … プロセスID
			• returncode … 終了コード
				異常終了の場合は負の値になる
			• wait() … 終了まで待機する
			• communicate(input=None,timeout=None)
				stdinとして渡すbytearrayをinputに指定する
				戻り値として (stdout,stderr) の形のタプルでstdout,stderrをbytearray型で返す
				timeoutを指定して,時間制限を設けることができる
				subprocess.PIPE を指定したIOのみ受け渡しができる

	exec(pythonSource,globals,locals) -> None
		• pythonSource に記載したPythonソースを実行する
		• ソース中の値は直接戻り値として受け取ることはできない
		• 外の変数をexec内で参照したり,exec内の変数を外から参照することもできる
		• globalsやlocalsにソース中で使える変数を与えることができる
			e.g. locals={"a":6} … 内部で変数 a が参照でき, 6 が得られる

	eval(pythonSource,globals,locals) -> value?
		• pythonSource に記載したPythonソースを実行する
			但し,等号を含む式や,構文を含むものなどは使えない
		• ソース中の値は直接戻り値として受け取ることはできない
		• 外の変数をeval内で参照したり,eval内の変数を外から参照することもできる
		• globalsやlocalsにソース中で使える変数を与えることができる

"""

runningDirectly(__name__,Classes)