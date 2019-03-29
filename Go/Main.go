
// Go

/*
	複数行のコメント
*/

/*
	Unix系でのGoの使い方
	コンパイル
		(cd Go ; go build ; mv Go Build)
			1. カレントディレクトリをGoに変更
			2. コンパイル
			3. 実行ファイル名を変更
	実行
		Go/Build
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
4. 条件分岐を試す
5. 繰り返しを試す

0. 終了
		`)
		stdin.Scan()
		fmt.Println(`


		`)
		var action = stdin.Text()
		if action == "0" {
			break
		} else if action == "1" {
			Stdinout()
		} else if action == "2" {
			Values()
		} else if action == "3" {
			Operators()
		} else if action == "4" {
			Condition()
		} else if action == "5" {
			Loop()
		} else {
			fmt.Println("指定したアクションは見つかりませんでした")
		}
	}
}