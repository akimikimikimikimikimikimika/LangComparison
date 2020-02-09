object Condition {
	def main(args: Array[String]):Unit = {
		val test1 = true
		val test2 = false

		println("\r\nこれから条件分岐を試します\r\n")

		if (test1) {
			println("どうやらtest1は真のようです")
		}

		if (!test1) println("どうやらtest1は偽のようです")
		else if (test2) println("どうやらtest2は真のようです")
		else if (!test2 && test1) println("真偽が混在しているようです")
		else println("どれでもないようです")

		val value:Any = 8

		value match {
			case 0|1 => println(s"${value}は特別な値である")
			case 8|9|10 => println(s"${value}は連続して素数ではない")
			case 4|6 =>
				println(s"${value}は素数ではない")
			case 2|3|5|7 => println(s"${value}は素数である")
			case v:String => println("これはそもそも整数ではない。論外だ。")
			case _ => println(s"${value}なぞ私には興味がない")
		}

		println("\r\n")
	}
}