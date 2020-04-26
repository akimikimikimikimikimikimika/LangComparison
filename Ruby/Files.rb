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

=begin

	外部コマンドの実行

	• ?を後置するパラメータは,省略可能であることを示す
	• 文字列型: "tar -tf archive\ file.tar" のようなもの
	• 配列型: ["tar","-tf","archive file.tar"] のようなもの


	exec(env?,cmd,options?) -> void
		• stdin,stdout,stderr はインターセプトされない (optionsで変更可能)
		• cmd : 実行内容 (文字列型/配列型)
			但し,配列は *array の形で引数展開すること
			文字列の場合に,文字列中に ;[]() などのメタ文字が含まれる場合はシェル経由で実行される
		• env : 環境変数の連想配列
			指定しなければ現在の環境変数を使用
		• options : 実行オプション (後述)
		• 実行した後は,Rubyの実行に戻らずにそのまま終了する (以後のコードは実行されない)
		• execの終了コードはそのままRubyの終了コードになる

	`cmdStr` -> string
		• stdout がインターセプトされる
		• stdin,stderr はインターセプトされない
		• 実行完了まで `cmdStr` より先には進まない
		• cmdStr : 実行内容 (文字列型)
		• 戻り値 : stdout 全体
		• 実行後 $? から結果を得られる
			• $?.exitstatus : 終了コード
			• $?.pid : プロセスID

	system(env?,cmd,options?) -> bool | nil
		• stdin,stdout,stderr はインターセプトされない (optionsで変更可能)
		• 実行完了まで system より先には進まない
		• cmd : 実行内容 (文字列型/配列型)
		• env : 環境変数の連想配列
		• options : 実行オプション (後述)
		• 戻り値 : 成功したか否かを示す真偽値
			• true : 終了コードが0の場合
			• false : 終了コードが0以外の場合
			• nil : 実行に失敗した場合
		• 実行後 $? から結果を得られる

	spawn(env?,cmd,options?) -> int
		• stdin,stdout,stderr はインターセプトされない (optionsで変更可能)
		• spawn の時点ではプロセスは終了していないので, waitpid(プロセスID) を用いて終了を待つ必要がある
		• cmd : 実行内容 (文字列型/配列型)
		• env : 環境変数の連想配列
		• options : 実行オプション (後述)
		• 戻り値 : プロセスID
		• waitpid で待った後に $? から結果を得られる

	IO.popen(env?,cmd,options?,mode="r") -> IO
		• stdin,stdout,stderr の全てがインターセプトされる (optionsで変更可能)
		• cmd : 実行内容 (文字列型/配列型)
			IO.popen では配列であっても指定できる (*arrayの展開は必要ない)
		• env : 環境変数の連想配列
		• options : 実行オプション (後述)
		• 戻り値 : ファイルハンドラ (IOオブジェクト)
		• IO.popenはプロセスの終了を待ってくれない。待つ必要がある場合は spawn などを使用する

	• options : 実行オプションの連想配列
		• :in=> / STDIN=> / 0=>
			• :in,STDIN,0 … 親プロセスのstdinに接続
			• "パス" … ファイルから読み込む
			• "/dev/null" … 空の入力
			• ハンドラ … IO.pipe などで開いたファイルハンドラから読み込む (パイプ)
		• :out=> / STDOUT=> / 1=> , :err=> / STDERR=> / 2=>
			• :out,STDOUT,1,:err,STDERR,2 … 親プロセスのstdout,stderrに接続
			• [:child,:out],[:child,:err] … 子プロセスのstdout,stderrに接続
				e.g.
					:err=>[:child,:out],:out=>"output" … stderrとstdoutをまとめてファイル output に書き込む
			• "パス" … ファイルに書き込む
			• "/dev/null" … 出力を破棄
			• ハンドラ … IO.pipe などで開いたファイルハンドラに書き込む (パイプ)
		• :cwd=> … カレントディレクトリを指定
		• :exception=> … system(env?,cmd,options?) でのみ使用可能
			trueに指定すると, false や nil を返す代わりにエラーを発生させる
	• 複数のプロセスの間をパイプするには IO.pipe を使用する
		r,w = IO.pipe
		spawn("コマンド1",:out=>w)
		spawn("コマンド2",:in=>r) … コマンド1の出力がそのままコマンド2の入力になる
	• stdinを文字列で与える場合も IO.pipe を使用する
		r,w = IO.pipe
		w.write(stdIn)
		w.close
		spawn("コマンド",:in=>r)
	• stdout,stderrの文字列を受け取る場合も IO.pipe を使用する
		r,w = IO.pipe
		spawn("コマンド",:out=>w)
		stdOut=r.read
		r.close

	eval(rubySource) -> value?
		• rubySource に記載したRubyソースを実行する
		• ソース中の最終行の値がevalから返される。
		• 外の変数をeval内で参照したり,eval内の変数を外から参照することもできる。

=end

Files() if runningDirectly(__FILE__)