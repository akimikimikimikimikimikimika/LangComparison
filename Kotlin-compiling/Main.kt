// Kotlin

/*
	複数行のコメント
*/

/*
	メイン関数
	Kotlinではメイン関数を用意する
*/
fun main(args: Array<String>) {

	println("""

こんにちは。私の名前はKotlin。
""")

	while (true) {

		println("""

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す

0. 終了


""")
		val action = readLine()
		println("\r\n\r\n")
		if (action=="0") {
			break
		}
		else if (action=="1") {
			Stdinout()
		}
		else if (action=="2") {
			Values()
		}
		else if (action=="3") {
			Operators()
		}
		else {
			println("""
指定したアクションは見つかりませんでした

""")
		}

	}

}