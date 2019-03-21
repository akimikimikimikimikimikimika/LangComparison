#! /usr/local/bin/ruby

require "FileUtils"; # FileUtils全般の使用に必要

print "\r\nこれからファイル操作を試します\r\n\r\n";

print "> カレントディレクトリをホームに変更\r\n\r\n";
Dir.chdir(Dir.home); # 或いは FileUtils.cd

# ファイル/フォルダ/シンボリックリンクの作成

print "> Emptyという空フォルダを作成\r\n";
Dir.mkdir("Empty"); # 或いは FileUtils.mkdir

print "> Blankという空ファイルを作成\r\n";
FH1=File.open("Blank","w");
	# 既にBlankが存在していたら内容が削除される
	# 削除したくない場合は,"w"を"r"や"a"にする
FH1.close();

print "> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n\r\n";
File.symlink("Blank","Empty/Symlink"); # 或いは FileUtils.ln_s
	# File.link("Blank","Empty/Link") とすると,ハードリンクが作成される
	# 或いは FileUtils.ln

# 書込み

print "> Untitled.mdというMarkdownファイルを作成して書込み\r\n\r\n";
	# 既にUntitled.mdが存在すれば上書きされる
FH2=File.open("Untitled.md","w");
FH2.write("# Header 1");
FH2.close();

# 移動/名称変更

print "> フォルダEmptyをPackageに名称変更\r\n";
FileUtils.mv("Empty","Package"); # 或いはFile.rename
print "> Packageフォルダ内のSymlinkファイルをAliasに名称変更\r\n";
FileUtils.mv("Package/Symlink","Package/Alias"); # 或いはFile.rename
print "> Untitled.mdを移動して,名称変更\r\n\r\n";
FileUtils.mv("Untitled.md","Package/Headers.md"); # 或いはFile.rename
	# File.renameでファイル移動するとエラーになる場合があるみたい

# 追記

print "> Markdownファイルに追記\r\n\r\n";
FH3=File.open("Package/Headers.md","a");
FH3.write("\r\n## Header 2\r\n### Header 3");
FH3.close();

# 読込み

print "> Markdownファイルを読込み\r\n\r\n";
FH4=File.open("Package/Headers.md","r");
print FH4.read;
FH4.close();
print "\r\n\r\n";

# 再帰的にフォルダ作成

print "> フォルダを一気に作成\r\n\r\n";
FileUtils.mkdir_p("Package/Module/Submodule/Item");
	# Dir.mkdirの代わりにFileUtils.mkdir_pを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

# ファイル/フォルダの複製

print "> BlankとModuleを複製\r\n\r\n";
FileUtils.cp("Blank","Package/Blank");
FileUtils.cp_r("Package/Module","Package/Module Copy");

# ファイル/フォルダの削除

print "> ファイルBlankを削除\r\n";
File.delete("Blank"); # 或いは File.unlink FileUtils.rm

print "> シンボリックリンクAliasを削除\r\n";
File.delete("Package/Alias"); # 或いは File.unlink FileUtils.rm

print "> フォルダModuleを削除\r\n\r\n";
FileUtils.rm_rf("Package/Module");
	# 空のフォルダはDir.rmdirで削除できる。空でない場合は削除できない。
	# FileUtils.rm_rf を使えば,空でなくても削除できる

# 状態を確認する関数

def check(pt)

	print "   #{ File.exist?(pt) ? '存在しています' : '存在していません' }\r\n";

	case File.ftype(pt)
		when "link" then
			print "   シンボリックリンクです\r\n";
			print "   リンク先: #{File.readlink(pt)}\r\n";
		when "file" then
			print "   ファイルです\r\n";
		when "directory" then
			print "   フォルダです\r\n";
	end

	print "   読込可能です\r\n" if File.readable?(pt);
	print "   書込可能です\r\n" if File.writable?(pt);
	print "   実行可能です\r\n" if File.executable?(pt);

	print "   空です\r\n" if File.zero?(pt);

end;

# 権限を確認/変更

print "> 実行ファイルを作成します\r\n";
FH5=File.open("Package/Ruby.rb","a");
FH5.write(<<"Ruby Script");
#! /usr/local/bin/ruby
print "Hello world!";
Ruby Script
FH5.close();

print "> このファイルに対する現在の状態を確認\r\n";
check("Package/Ruby.rb");

print "> 読込/書込権限を剥奪\r\n";
File.chmod(0044,"Package/Ruby.rb");

print "> 状態を確認\r\n";
check("Package/Ruby.rb");

print "> 読込/実行権限を付加\r\n";
File.chmod(0544,"Package/Ruby.rb");

print "> 状態を確認\r\n";
check("Package/Ruby.rb");

=begin
	chmodは数値により権限を指定する
		4: 読込可能 (Readable)
		2: 書込可能 (Writable)
		1: 実行可能 (eXecutable)
	これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
	Rubyでは8進数で表記するために,前に0を付加する
	e.g. chmod 0754
		ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
		ゲストは 5 = 4 + 1 だから,読込可能,実行可能
		その他は 4 だから,読込のみ可能
=end

print "> 実行\r\n";
system("Package/Ruby.rb");

print "\r\n\r\n";