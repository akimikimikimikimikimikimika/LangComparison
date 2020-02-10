// Scala

/*
	複数行のコメント
*/

import util.control.Breaks

object Main {

	var arg: Array[String] = Array()

	def main(args: Array[String]):Unit = {

		if (args.length==0) {
			println("こんにちは。私の名前はScala。")
			val b = new Breaks
			b.breakable {
				while (true) {
					println(trim("""

						何がしたい?

						1. 標準入出力を試す
						2. 色々な値を試す
						3. 演算子を試す
						4. 条件分岐を試す
						5. 繰り返しを試す

						0. 終了


					"""))
					val action = io.StdIn.readLine()
					println("\r\n\r\n")
					if (action=="0") b.break // Scalaではbreakは制御構文ではなく,オブジェクトを用いる
					else if (action=="1") Stdinout.main(arg)
					else if (action=="2") Values.main(arg)
					else if (action=="3") Operators.main(arg)
					else if (action=="4") Condition.main(arg)
					else if (action=="5") Loop.main(arg)
					else println(trim("""
						指定したアクションは見つかりませんでした

					"""))
				}
			}
		}
		else if (args.length==1) {
			if (args(0)=="Stdinout") Stdinout.main(arg)
			else if (args(0)=="Values") Values.main(arg)
			else if (args(0)=="Operators") Operators.main(arg)
			else if (args(0)=="Condition") Condition.main(arg)
			else if (args(0)=="Loop") Loop.main(arg)
		}

	}

	def trim(input:String):String = {
		return input.replaceAll("(\\r?\\n)[\\t]+","$1")
	}

}