package main

import "os"
import "fmt"

func Arguments() {

	args := os.Args[1:]

	if (len(args)>0) {
		fmt.Println("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n")

		for n,s := range args {
			fmt.Println(" ",n+1,": ",s)
		}
	} else {
		fmt.Println("このデモは,引数を付してコマンドを実行することで体験できます")
		fmt.Println("")
		fmt.Println("コマンドラインに以下のように入力して実行します:")
		fmt.Println("")
		fmt.Println("Go/Build 引数1 引数2…")
		fmt.Println("")
		fmt.Println("すると,引数1,引数2…が順に出力されます")
	}

	fmt.Println("\r\n")

}