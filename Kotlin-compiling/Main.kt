// Kotlin

/*
	複数行のコメント
*/

/*
	メイン関数
	Kotlinは起動時にメイン関数が実行される
	外部のKotlinコード内の関数は特に手続きすることなく普通に呼び出しできる
*/
fun main(args: Array<String>) {

	if (args.size==0) {
		println("こんにちは。私の名前はKotlin。")
		while (true) {
			println(trim("""

				何がしたい?

				1. 標準入出力を試す
				2. 色々な値を試す
				3. 演算子を試す
				4. 条件分岐を試す
				5. 繰り返しを試す
				h. コマンドライン引数を試す

				0. 終了


			"""))
			val action = readLine()
			println("\r\n\r\n")
			if (action=="0") break
			else if (action=="1") Stdinout()
			else if (action=="2") Values()
			else if (action=="3") Operators()
			else if (action=="4") Condition()
			else if (action=="5") Loop()
			else if (action=="h") Arguments(arrayOf())
			else println(trim("""
				指定したアクションは見つかりませんでした

			"""))
		}
	}
	else if (args.size==1) {
		if (args[0]=="Stdinout") Stdinout()
		else if (args[0]=="Values") Values()
		else if (args[0]=="Operators") Operators()
		else if (args[0]=="Condition") Condition()
		else if (args[0]=="Loop") Loop()
		else if (args[0]=="Arguments") Arguments(arrayOf())
		else Arguments(args)
	}
	else Arguments(args)

}

fun trim(input:String):String {
	return input.replace("(\\r?\\n)[\\t]+".toRegex(),"\$1")
}