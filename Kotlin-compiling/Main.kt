// Kotlin

/*
	複数行のコメント
*/

/*
	メイン関数
	Kotlinは起動時にメイン関数が実行される
	外部のKotlinコード内の関数は特に手続きすることなく普通に呼び出しできる
*/

fun main(args:Array<String>) {
	if (args.size==0) mainLoop()
	else launcher(args)
}

fun mainLoop() {
	printLn("""

		こんにちは。私の名前はKotlin。
	""")
	while (true) {
		printLn("""

			何がしたい?

			1. 標準入出力を試す
			2. 色々な値を試す
			3. 演算子を試す
			4. 条件分岐を試す
			5. 繰り返しを試す
			h. コマンドライン引数を試す

			0. 終了


		""")

		val action = readLine()
		pnl(3)

		when action {
			"0" -> break
			"1" -> Stdio()
			"2" -> Values()
			"3" -> Operators()
			"4" -> Condition()
			"5" -> Repeat()
			"h" -> Arguments()
			else -> printLn("""
				指定したアクションは見つかりませんでした

			""")
		}

	}
}

fun launcher(args:Array<String>) {
	if (args.size==1) when (args[0]) {
		"Stdio" -> Stdinout()
		"Values" -> Values()
		"Operators" -> Operators()
		"Condition" -> Condition()
		"Loop" -> Loop()
		"Arguments" -> Arguments(arrayOf())
		else -> Arguments(args)
	}
	else Arguments(args)
}