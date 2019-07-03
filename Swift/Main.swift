#! /usr/bin/env swift

// Swift

import Foundation

let fm=FileManager.default
fm.changeCurrentDirectoryPath(URL(fileURLWithPath: CommandLine.arguments[0]).deletingLastPathComponent().path)

func exec(_ s:String,_ args:String...) {
	do{
		let p=try Process.run(URL(fileURLWithPath: s), arguments: args, terminationHandler: nil)
		p.waitUntilExit()
	}catch{
		print("エラーが発生したため,実行できませんでした")
	}
}

print("こんにちは。私の名前はSwift。")
while true {
	print("""

	何がしたい?

	1. 標準入出力を試す
	2. 色々な値を試す
	3. 演算子を試す
	4. 条件分岐を試す
	5. 繰り返しを試す
	6. 数学的演算を試す
	7. 文字列を試す
	8. 文字列フォーマットを試す
	9. 正規表現を試す
	a. 日付と時刻を試す
	b. クラスを試す
	c. 例外処理を試す
	d. ファイル操作を試す
	e. ファイルパスを試す
	f. プロセス系を試す
	g. スレッドを試す
	h. コマンドライン引数を試す

	0. 終了


	""")
	let action:String = readLine()!
	print("\r\n\r\n\r\n")
	if action=="0" {
		break
	}
	else if action=="1" {
		exec("Stdinout.swift","no-stdin")
	}
	else if action=="2" {
		exec("Values.swift")
	}
	else if action=="3" {
		exec("Operators.swift")
	}
	else if action=="4" {
		exec("Condition.swift")
	}
	else if action=="5" {
		exec("Loop.swift")
	}
	else if action=="6" {
		exec("Math.swift")
	}
	else if action=="7" {
		exec("String.swift")
	}
	else if action=="8" {
		exec("Sprintf.swift")
	}
	else if action=="9" {
		exec("RegExp.swift")
	}
	else if action=="a" {
		exec("DateTime.swift")
	}
	else if action=="b" {
		exec("Class.swift")
	}
	else if action=="c" {
		exec("Error.swift")
	}
	else if action=="d" {
		exec("File.swift")
	}
	else if action=="e" {
		exec("Path.swift")
	}
	else if action=="f" {
		exec("Process.swift")
	}
	else if action=="g" {
		exec("Thread.swift")
	}
	else if action=="h" {
		exec("Arguments.swift","このプログラムを直接実行してみよう。","ここにあるよ: Swift/Arguments.swift","","コマンドラインに以下のように入力して実行します","","Swift/Arguments.swift 引数1 引数2…","","すると,引数1,引数2…が順に出力されます")
	}
	else {
		print("指定したアクションは見つかりませんでした")
	}
}
