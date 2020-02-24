
// Go

/*
	コンパイル       make go-build
	実行            make go-run
	実行ファイルの削除 make go-clean
	clean+build    make go-retry
	コンパイラの表示  make go-cmd

	Makefileを利用してコンパイルを実行する。
*/

package main

import "os"
import "bufio"


func main() {

	stdin := bufio.NewScanner(os.Stdin)
	template := []string{
		"このデモは,引数を付してコマンドを実行することで体験できます",
		"",
		"コマンドラインに以下のように入力して実行します:",
		"",
		"Go/bin 引数1 引数2…",
		"",
		"すると,引数1,引数2…が順に出力されます",
		"",
	}
	args := os.Args[1:]

	if (len(args)==0) {
		print("こんにちは。私の名前はGo。",ln{1})
		for {
			print(clean{},`

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
			print(ln{3})
			var action = stdin.Text()
			if action == "0" {break
			} else if action == "1" {Stdinout()
			} else if action == "2" {Values()
			} else if action == "3" {Operators()
			} else if action == "4" {Condition()
			} else if action == "5" {Loop()
			} else if action == "6" {Math()
			} else if action == "9" {RegExp()
			} else if action == "d" {File()
			} else if action == "e" {Path()
			} else if action == "g" {Thread()
			} else if action == "h" {Arguments(template)
			} else {print("指定したアクションは見つかりませんでした",ln{1})}
		}
	} else if (len(args)==1) {
		if args[0] == "Stdinout" {Stdinout()
		} else if args[0] == "Values" {Values()
		} else if args[0] == "Operators" {Operators()
		} else if args[0] == "Condition" {Condition()
		} else if args[0] == "Loop" {Loop()
		} else if args[0] == "Math" {Math()
		} else if args[0] == "RegExp" {RegExp()
		} else if args[0] == "File" {File()
		} else if args[0] == "Path" {Path()
		} else if args[0] == "Thread" {Thread()
		} else if args[0] == "Arguments" {Arguments(template)
		} else {Arguments(args)}
	} else {Arguments(args)}
}