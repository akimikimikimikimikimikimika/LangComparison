// Scala

/*
	複数行のコメント
*/

import sys.process._
import java.io._
import util.control.Breaks
import scala.language.postfixOps

// println(new File(".").getAbsoluteFile().getParent())

object Main {
	var arg: Array[String] = Array()
	def main(args: Array[String]):Unit = {
		val b = new Breaks
		println("こんにちは。私の名前はScala。")
		b.breakable {
			while (true) {
				println("""

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す

0. 終了


""")
				val action = io.StdIn.readLine()
				println("\r\n\r\n")
				if (action=="0") b.break // Scalaではbreakは制御構文ではなく,オブジェクトを用いる
				else if (action=="1") Stdinout.main(arg)
				else if (action=="2") Values.main(arg)
				else if (action=="3") Operators.main(arg)
				else if (action=="4") Condition.main(arg)
				else if (action=="5") Loop.main(arg)
				else println("""
指定したアクションは見つかりませんでした

""")
			}
		}
	}
}