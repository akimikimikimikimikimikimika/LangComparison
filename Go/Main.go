
// Go

/*
	複数行のコメント
*/

/*
	Unix系でのGoの使い方
	コンパイル
		(cd Go ; go build ; mv Go bin)
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
	stdin := bufio.NewScanner(os.Stdin)
	args := os.Args[1:]
	if (len(args)>0) {
		if (len(args)>1) {
			Arguments()
		} else {
			if args[0] == "Stdinout" {
				Stdinout()
			} else if args[0] == "Values" {
				Values()
			} else if args[0] == "Operators" {
				Operators()
			} else if args[0] == "Condition" {
				Condition()
			} else if args[0] == "Loop" {
				Loop()
			} else if args[0] == "Math" {
				Math()
			} else if args[0] == "RegExp" {
				RegExp()
			} else if args[0] == "File" {
				File()
			} else if args[0] == "Path" {
				Path()
			} else if args[0] == "Thread" {
				Thread()
			} else if args[0] == "Arguments" {
				Arguments()
			} else {
				Arguments()
			}
		}
	} else {
		fmt.Println("こんにちは。私の名前はGo。")
		for {
			fmt.Println(`

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 数学的演算を試す
9. 正規表現を試す
d. ファイル操作を試す
e. ファイルパスを試す
g. スレッドを試す
h. コマンドライン引数を試す

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
			} else if action == "6" {
				Math()
			} else if action == "9" {
				RegExp()
			} else if action == "d" {
				File()
			} else if action == "e" {
				Path()
			} else if action == "g" {
				Thread()
			} else if action == "h" {
				Arguments()
			} else {
				fmt.Println("指定したアクションは見つかりませんでした")
			}
		}
	}
}