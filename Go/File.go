package main

import "fmt"
import "os"
import "io/ioutil"

func File() {

	fmt.Println("\r\nこれからファイル操作を試します\r\n")

	// ファイル操作系のメソッドは基本的にエラーを発生させる可能性があり,返値でエラーを受け取っている。

	var e error

	fmt.Println("> カレントディレクトリをホームに変更\r\n")
	home,e := os.UserHomeDir()
	errorHandle(e)
	os.Chdir(home)

	// ファイル/フォルダ/シンボリックリンクの作成

	fmt.Println("> Emptyという空フォルダを作成")
	errorHandle(   os.Mkdir("Empty",0744)   )
		// Mkdirではなぜか7にしないとディレクトリへのアクセス権を失ってしまう

	fmt.Println("> Blankという空ファイルを作成")
	io1,e := os.Create("Blank")
	errorHandle(e)
	defer io1.Close()

	fmt.Println("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n")
	errorHandle(   os.Symlink("Blank","Empty/Symlink")   )
		// os.Link("Blank","Symlink") とすると,ハードリンクが作成される

	fmt.Println("> Untitled.mdというMarkdownファイルを作成して書込み\r\n")
	io2,e := os.OpenFile("Untitled.md",os.O_WRONLY|os.O_CREATE,0644)
	errorHandle(e)
	io2.WriteString("# Header 1")
	defer io2.Close()
	/*
		或いは
		ioutil.WriteFile("Untitled.md",[]byte("# Header 1"))
	*/

	// 移動/名称変更

	fmt.Println("> フォルダEmptyをPackageに名称変更")
	errorHandle(   os.Rename("Empty","Package")   )
	fmt.Println("> Packageフォルダ内のSymlinkファイルをAliasに名称変更")
	errorHandle(   os.Rename("Package/Symlink","Package/Alias")   )
	fmt.Println("> Untitled.mdを移動して,名称変更\r\n")
	errorHandle(   os.Rename("Untitled.md","Package/Headers.md")   )

	// 追記

	fmt.Println("> Markdownファイルに追記\r\n")
	io3,e := os.OpenFile("Package/Headers.md",os.O_WRONLY|os.O_APPEND,0644)
	errorHandle(e)
	io3.WriteString("\r\n## Header 2\r\n### Header 3")
	defer io3.Close()

	// 読込み

	fmt.Println("> Markdownファイルを読込み")
	bytearray,e := ioutil.ReadFile("Package/Headers.md")
	errorHandle(e)
	fmt.Println(string(bytearray))
	fmt.Print("\r\n")

	// 再帰的にフォルダ作成

	fmt.Println("> フォルダを一気に作成\r\n")
	errorHandle(   os.MkdirAll("Package/Module/Submodule/Item",0744)   )
		// os.Mkdirの代わりにos.MkdirAllを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

	// ファイル/フォルダの削除

	fmt.Println("> ファイルBlankを削除")
	os.Remove("Blank")

	fmt.Println("> シンボリックリンクAliasを削除")
	os.Remove("Package/Alias")

	fmt.Println("> フォルダModuleを削除\r\n")
	os.Remove("Package/Module")
		// 空のフォルダはos.Removeで削除できる。空でない場合は削除できない。
		// os.RemoveAll を使えば,空でなくても削除できる

}

func errorHandle(e error) {
	if (e != nil) {
		fmt.Println("直前の操作においてエラーが発生しました")
		fmt.Println(e)
		os.Exit(1)
	}
}