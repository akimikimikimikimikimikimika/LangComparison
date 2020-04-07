#! /usr/bin/env ruby

require_relative "Utility.rb"
require "FileUtils" # FileUtils全般の使用に必要

def Files

	pnl 1

	println "これからファイル操作を試します",2

	println "> カレントディレクトリをホームに変更",2
	Dir.chdir(Dir.home) # 或いは FileUtils.cd

	# ファイル/フォルダ/シンボリックリンクの作成

	println "> Emptyという空フォルダを作成"
	Dir.mkdir("Empty") # 或いは FileUtils.mkdir

	println "> Blankという空ファイルを作成"
	io=File.open("Blank","w")
		# 既にBlankが存在していたら内容が削除される
		# 削除したくない場合は,"w"を"r"や"a"にする
	io.close

	println "> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成",2
	File.symlink("Blank","Empty/Symlink") # 或いは FileUtils.ln_s
		# File.link("Blank","Empty/Link") とすると,ハードリンクが作成される
		# 或いは FileUtils.ln

	# 書込み

	println "> Untitled.mdというMarkdownファイルを作成して書込み",2
		# 既にUntitled.mdが存在すれば上書きされる
	io=File.open("Untitled.md","w")
	io.write("# Header 1")
	io.close

	# 移動/名称変更

	println "> フォルダEmptyをPackageに名称変更"
	FileUtils.mv("Empty","Package") # 或いはFile.rename
	println "> Packageフォルダ内のSymlinkファイルをAliasに名称変更"
	FileUtils.mv("Package/Symlink","Package/Alias") # 或いはFile.rename
	println "> Untitled.mdを移動して,名称変更",2
	FileUtils.mv("Untitled.md","Package/Headers.md") # 或いはFile.rename
		# File.renameでファイル移動するとエラーになる場合があるみたい

	# 追記

	println "> Markdownファイルに追記",2
	io=File.open("Package/Headers.md","a")
	io.write(nl+"## Header 2"+nl+"### Header 3")
	io.close

	# 読込み

	println "> Markdownファイルを読込み",2
	io=File.open("Package/Headers.md","r")
	println io.read,3
	io.close

	# 再帰的にフォルダ作成

	println "> フォルダを一気に作成",2
	FileUtils.mkdir_p("Package/Module/Submodule/Item")
		# Dir.mkdirの代わりにFileUtils.mkdir_pを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

	# ファイル/フォルダの複製

	println "> BlankとModuleを複製",2
	FileUtils.cp("Blank","Package/Blank")
	FileUtils.cp_r("Package/Module","Package/Module Copy")

	# ファイル/フォルダの削除

	println "> ファイルBlankを削除"
	File.delete("Blank") # 或いは File.upnlink FileUtils.rm

	println "> シンボリックリンクAliasを削除"
	File.delete("Package/Alias") # 或いは File.upnlink FileUtils.rm

	println "> フォルダModuleを削除",2
	FileUtils.rm_rf("Package/Module")
		# 空のフォルダはDir.rmdirで削除できる。空でない場合は削除できない。
		# FileUtils.rm_rf を使えば,空でなくても削除できる

	# 権限を確認/変更

	println "> 実行ファイルを作成します"
	io=File.open("Package/Ruby.rb","a")
	io.write(clean('''
		#! /usr/bin/env ruby

		print "Hello world!"
	'''))
	io.close

	println "> このファイルに対する現在の状態を確認"
	check("Package/Ruby.rb")

	println "> 読込/書込権限を剥奪"
	File.chmod(0044,"Package/Ruby.rb")

	println "> 状態を確認"
	check("Package/Ruby.rb")

	println "> 読込/実行権限を付加"
	File.chmod(0544,"Package/Ruby.rb")

	println "> 状態を確認"
	check("Package/Ruby.rb")

	# File.chmodは数値により権限を指定する
	# 	4: 読込可能 (Readable)
	# 	2: 書込可能 (Writable)
	# 	1: 実行可能 (eXecutable)
	# これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
	# Rubyでは8進数で表記するために,前に0を付加する
	# e.g. File.chmod(0754,somefile)
	# 	ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
	# 	ゲストは 5 = 4 + 1 だから,読込可能,実行可能
	# 	その他は 4 だから,読込のみ可能

	println "> 実行"
	system("Package/Ruby.rb")

	pnl 2

end

# 状態を確認する関数
def check(pt)

	println "   #{ File.exist?(pt) ? '存在しています' : '存在していません' }"

	case File.ftype(pt)
		when "link" then
			prints(
				"   シンボリックリンクです",
				"   リンク先: #{File.readlink(pt)}"
			)
		when "file" then
			println "   ファイルです"
		when "directory" then
			println "   フォルダです"
	end

	println "   読込可能です" if File.readable?(pt)
	println "   書込可能です" if File.writable?(pt)
	println "   実行可能です" if File.executable?(pt)

	println "   空です" if File.zero?(pt)

end

Files() if runningDirectly(__FILE__)