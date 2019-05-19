package main

import "os"
import "fmt"

func Arguments() {

	args := os.Args[1:]

	fmt.Println("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n")

	if (len(args)>0) {
		for n,s := range args {
			fmt.Println(" ",n+1,": ",s)
		}
	} else {
		fmt.Println(" 1: このデモは,引数を付してコマンドを実行することで体験できます")
		fmt.Println(" 2: ")
		fmt.Println(" 3: コマンドラインに以下のように入力して実行します:")
		fmt.Println(" 4: ")
		fmt.Println(" 5: Go/Build 引数1 引数2…")
		fmt.Println(" 6: ")
		fmt.Println(" 7: すると,引数1,引数2…が順に出力されます")
		fmt.Println(" 8: ")
	}

	fmt.Println("\r\n\r\n")

}