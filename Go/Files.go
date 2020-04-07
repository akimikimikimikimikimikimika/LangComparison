package main

import "os"
import "io/ioutil"

func Files() {

	print(ln{1},"これからファイル操作を試します",ln{2})

	// ファイル操作系のメソッドは基本的にエラーを発生させる可能性があり,返値でエラーを受け取っている。

	var e error

	print("> カレントディレクトリをホームに変更",ln{2})
	home,e := os.UserHomeDir()
	errorHandle(e)
	os.Chdir(home)

	// ファイル/フォルダ/シンボリックリンクの作成

	print("> Emptyという空フォルダを作成",ln{1})
	errorHandle(   os.Mkdir("Empty",0744)   )
		// Mkdirではなぜか7にしないとディレクトリへのアクセス権を失ってしまう

	print("> Blankという空ファイルを作成",ln{1})
	io1,e := os.Create("Blank")
	errorHandle(e)
	defer io1.Close()

	print("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成",ln{2})
	errorHandle(   os.Symlink("Blank","Empty/Symlink")   )
		// os.Link("Blank","Symlink") とすると,ハードリンクが作成される

	print("> Untitled.mdというMarkdownファイルを作成して書込み",ln{2})
	io2,e := os.OpenFile("Untitled.md",os.O_WRONLY|os.O_CREATE,0644)
	errorHandle(e)
	io2.WriteString("# Header 1")
	defer io2.Close()
	/*
		或いは
		ioutil.WriteFile("Untitled.md",[]byte("# Header 1"))
	*/

	// 移動/名称変更

	print("> フォルダEmptyをPackageに名称変更",ln{1})
	errorHandle(   os.Rename("Empty","Package")   )
	print("> Packageフォルダ内のSymlinkファイルをAliasに名称変更",ln{1})
	errorHandle(   os.Rename("Package/Symlink","Package/Alias")   )
	print("> Untitled.mdを移動して,名称変更",ln{2})
	errorHandle(   os.Rename("Untitled.md","Package/Headers.md")   )

	// 追記

	print("> Markdownファイルに追記\r\n",ln{2})
	io3,e := os.OpenFile("Package/Headers.md",os.O_WRONLY|os.O_APPEND,0644)
	errorHandle(e)
	io3.WriteString("\r\n## Header 2\r\n### Header 3")
	defer io3.Close()

	// 読込み

	print("> Markdownファイルを読込み",ln{1})
	bytearray,e := ioutil.ReadFile("Package/Headers.md")
	errorHandle(e)
	print(string(bytearray),ln{1})

	// 再帰的にフォルダ作成

	print("> フォルダを一気に作成",ln{2})
	errorHandle(   os.MkdirAll("Package/Module/Submodule/Item",0744)   )
		// os.Mkdirの代わりにos.MkdirAllを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

	// ファイル/フォルダの削除

	print("> ファイルBlankを削除",ln{1})
	os.Remove("Blank")

	print("> シンボリックリンクAliasを削除",ln{1})
	os.Remove("Package/Alias")

	print("> フォルダModuleを削除",ln{2})
	os.Remove("Package/Module")
		// 空のフォルダはos.Removeで削除できる。空でない場合は削除できない。
		// os.RemoveAll を使えば,空でなくても削除できる

}

func errorHandle(e error) {
	if (e != nil) {
		print(
			"直前の操作においてエラーが発生しました",ln{1},
			e,
		)
		os.Exit(1)
	}
}