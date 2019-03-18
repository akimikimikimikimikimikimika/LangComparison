
// Go

/*
	複数行のコメント
*/

/*
	Goのコンパイル
	cd Go ← カレントディレクトリをGoにする必要がある
	go build : コンパイル
	./Go (Windowsは ./Go.exe)
*/
package main

import "fmt"
import "os"
import "bufio"

func main() {
	fmt.Println("こんにちは。私の名前はGo。")
	var stdin = bufio.NewScanner(os.Stdin)
	for true {
		fmt.Println(`

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す

0. 終了
		`)
		stdin.Scan()
		fmt.Println(`


		`)
		var action = stdin.Text()
		if action == "0" {
			break
		} else if action == "1" {
			stdinout()
		} else if action == "2" {
			values()
		} else if action == "3" {
			operators()
		} else {
			fmt.Println("指定したアクションは見つかりませんでした")
		}
	}
}