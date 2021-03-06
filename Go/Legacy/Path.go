package main

import "os/user"
import "os"
import fp "path/filepath"

func Path() {

	usr,_ := user.Current()
	home := usr.HomeDir
	cd,_ := os.Getwd()

	exec := os.Args[0]
	abs,_ := fp.Abs(exec)

	print(clean{},`
		ホームディレクトリ:       `,home,`
		カレントディレクトリ:     `,cd,`

		このファイルのフルパス:   `,abs,`
		このファイルの実行パス:   `,exec,`
		このファイルの名前:       `,fp.Base(exec),`
		このファイルのある場所:   `,fp.Dir(abs),`
	`)

	print(ln{3})

}