
// Swift

/*
	Swiftのコンパイル: make swiftc-build
	こちらは,コンパイルして利用するSwiftコードです。同じ内容でスクリプト言語のように利用できるSwiftコードも用意しています。
	全て小文字の main.swift というファイルをエントリポイントにする必要があるみたいです
*/

import Foundation

let args = CommandLine.arguments

if args.count==1 {

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
		if action=="0" {break}
		else if action=="1" {Stdinout()}
		else if action=="2" {Values()}
		else if action=="3" {Operators()}
		else if action=="4" {Condition()}
		else if action=="5" {Loop()}
		else if action=="6" {Math()}
		else if action=="7" {StringType()}
		else if action=="8" {Sprintf()}
		else if action=="9" {RegExp()}
		else if action=="a" {DateTime()}
		else if action=="b" {Class()}
		else if action=="c" {ErrorHandle()}
		else if action=="d" {File()}
		else if action=="e" {Path()}
		else if action=="f" {ProcessHandle()}
		else if action=="g" {Threading()}
		else if action=="h" {Arguments([])}
		else {print("指定したアクションは見つかりませんでした")}
	}

}
else if args.count==2 {
	switch args[1] {
		case "Stdinout":Stdinout()
		case "Values":Values()
		case "Operators":Operators()
		case "Condition":Condition()
		case "Loop":Loop()
		case "Math":Math()
		case "String":StringType()
		case "Sprintf":Sprintf()
		case "RegExp":RegExp()
		case "DateTime":DateTime()
		case "Class":Class()
		case "Error":ErrorHandle()
		case "File":File()
		case "Path":Path()
		case "Process":ProcessHandle()
		case "Thread":Threading()
		case "Arguments":Arguments([])
		default:Arguments(args)
	}
}
else {Arguments(args)}