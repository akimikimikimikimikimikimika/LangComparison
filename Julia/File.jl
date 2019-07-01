#! /usr/bin/env julia

println("\r\nこれからファイル操作を試します\r\n")

println("> カレントディレクトリをホームに変更\r\n")
cd(homedir())

# ファイル/フォルダ/シンボリックリンクの作成

println("> Emptyという空フォルダを作成")
mkdir("Empty")

println("> Blankという空ファイルを作成")
touch("Blank")

println("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n")
symlink("Blank","Empty/Symlink")

# 書込み

print("> Untitled.mdというMarkdownファイルを作成して書込み\r\n")
io=open("Untitled.md","w")
write(io,"# Header 1")
close(io)

# 移動/名称変更

println("> フォルダEmptyをPackageに名称変更")
mv("Empty","Package")
println("> Packageフォルダ内のSymlinkファイルをAliasに名称変更")
mv("Package/Symlink","Package/Alias")
println("> Untitled.mdを移動して,名称変更\r\n")
mv("Untitled.md","Package/Headers.md")

# 追記

println("> Markdownファイルに追記\r\n")
io=open("Package/Headers.md","a")
write(io,"\r\n## Header 2\r\n### Header 3")
close(io)

# 読込み

println("> Markdownファイルを読込み\r\n")
io=open("Package/Headers.md","r")
print(read(io,String))
close(io)
println("\r\n")

# 再帰的にフォルダ作成

println("> フォルダを一気に作成\r\n")
mkpath("Package/Module/Submodule/Item")

# ファイル/フォルダの複製

println("> BlankとModuleを複製\r\n")
cp("Blank","Package/Blank")
cp("Package/Module","Package/Module Copy")

# ファイル/フォルダの削除

println("> ファイルBlankを削除")
rm("Blank")

println("> シンボリックリンクAliasを削除")
rm("Package/Alias")

println("> フォルダModuleを削除\r\n")
rm("Package/Module",recursive=true)
	# 空のフォルダであればそのまま削除できる。空でない場合は削除できない。
	# recursive=true を追加すれば,空でなくても削除できる
	# force=true を追加すれば,ファイル/フォルダが実在しない場所を指定してもエラーを返さない

# 状態を確認する関数

function check(pt::String)
	if islink(pt)
		println("   シンボリックリンクです")
		println("   リンク先: $(readlink(pt))")
		if isfile(pt)
			println("   リンク先はファイルです")
		end
		if isdir(pt)
			print("   リンク先はフォルダです")
		end
	else
		if isfile(pt)
			println("   ファイルです")
		end
		if isdir(pt)
			println("   フォルダです")
		end
	end
	if uperm(pt)&04>0
		println("   読込可能です")
	end
	if uperm(pt)&02>0
		println("   書込可能です")
	end
	if uperm(pt)&01>0
		println("   実行可能です")
	end
end

# 権限を確認/変更

println("> 実行ファイルを作成します")
io=open("Package/Julia.jl","w")
write(io,"""
#! /usr/bin/env julia

println("Hello world!")
""")
close(io)

println("> このファイルに対する現在の状態を確認")
check("Package/Julia.jl")

println("> 読込/書込権限を剥奪")
chmod("Package/Julia.jl",0o044)

println("> 状態を確認")
check("Package/Julia.jl")

println("> 読込/実行権限を付加")
chmod("Package/Julia.jl",0o544)

println("> 状態を確認")
check("Package/Julia.jl")

#=
	chmodは数値により権限を指定する
		4: 読込可能 (Readable)
		2: 書込可能 (Writable)
		1: 実行可能 (eXecutable)
	これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
	Juliaでは8進数で表記するために,前に0oを付加する
	e.g. chmod(somefile,0754)
		ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
		ゲストは 5 = 4 + 1 だから,読込可能,実行可能
		その他は 4 だから,読込のみ可能
=#

println("> 実行")
run(`Package/Julia.jl`)
	# `Package/Julia.jl` によりプロセスオブジェクトを生成し,runによりプロセスを実行する

println("\r\n")