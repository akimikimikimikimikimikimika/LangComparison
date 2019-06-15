#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import shutil
import os
import subprocess

print("\r\nこれからファイル操作を試します\r\n")

print("> カレントディレクトリをホームに変更\r\n")
os.chdir(os.path.expanduser("~"))

# ファイル/フォルダ/シンボリックリンクの作成

print("> Emptyという空フォルダを作成")
os.mkdir("Empty")

print("> Blankという空ファイルを作成")
io=open("Blank","w")
io.close()

print("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n")
os.symlink("Blank","Empty/Symlink")
	# os.link("Blank","Empty/Link") とすると,ハードリンクが作成される

# 書込み

print("> Untitled.mdというMarkdownファイルを作成して書込み\r\n")
io=open("Untitled.md","w")
io.write("# Header 1")
io.close()

# 移動/名称変更

print("> フォルダEmptyをPackageに名称変更")
shutil.move("Empty","Package") # 或いはos.rename
print("> Packageフォルダ内のSymlinkファイルをAliasに名称変更")
shutil.move("Package/Symlink","Package/Alias") # 或いはos.rename
print("> Untitled.mdを移動して,名称変更\r\n")
shutil.move("Untitled.md","Package/Headers.md") # 或いはos.rename
	# os.renameでファイル移動するとエラーになる場合があるみたい

# 追記

print("> Markdownファイルに追記\r\n")
io=open("Package/Headers.md","a")
io.write("\r\n## Header 2\r\n### Header 3")
io.close()

# 読込み

print("> Markdownファイルを読込み\r\n")
io=open("Package/Headers.md","r")
print(io.read())
io.close()
print("\r\n")

# 再帰的にフォルダ作成

print("> フォルダを一気に作成\r\n")
os.makedirs("Package/Module/Submodule/Item")
	# os.mkdirの代わりにos.makedirsを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

# ファイル/フォルダの複製

print("> BlankとModuleを複製\r\n")
shutil.copy("Blank","Package/Blank")
shutil.copytree("Package/Module","Package/Module Copy")
	# shutil.copytree を用いることで,フォルダ内の内容もまとめて複製できる

# ファイル/フォルダの削除

print("> ファイルBlankを削除")
os.remove("Blank") # 或いは os.unlink

print("> シンボリックリンクAliasを削除")
os.remove("Package/Alias") # 或いは os.unlink

print("> フォルダModuleを削除\r\n")
shutil.rmtree("Package/Module")
	# 空のフォルダはos.rmdirで削除できる。空でない場合は削除できない。
	# shutil.rmtree を使えば,空でなくても削除できる

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

# 権限を確認/変更

print("> 実行ファイルを作成します")
io=open("Package/Python.py","w")
io.write("""#! /usr/bin/env python3
# -*- coding: utf-8 -*-

print("Hello world!")
""")
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
	chmodは数値により権限を指定する
		4: 読込可能 (Readable)
		2: 書込可能 (Writable)
		1: 実行可能 (eXecutable)
	これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
	Pythonでは8進数で表記するために,前に0oを付加する
	e.g. chmod 0754
		ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
		ゲストは 5 = 4 + 1 だから,読込可能,実行可能
		その他は 4 だから,読込のみ可能
'''

print("> 実行")
rtn=subprocess.call("Package/Python.py")
	# callの戻り値はコマンドのステータスコードであり,それを受け取らないと標準出力としてステータスコードが表示されてしまう

print("\r\n")