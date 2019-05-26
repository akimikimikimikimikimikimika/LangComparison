fun Condition() {

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

	// Kotlinにおけるwhenは多くの目的で使える便利な表現である。それを1つ1つみていく
	val value:Any = 8

	// 他言語におけるswitchの役割
	when (value) {
		0,1 -> println("${value}は特別な値である")
		in 8..10 -> println("${value}は連続して素数ではない")
		4,6 -> {
			println("${value}は素数ではない")
		} // {}で囲まれた表現も可能
		2,3,5,7 -> println("${value}は素数である")
		!is Int -> println("これはそもそも整数ではない。論外だ。")
		else -> println("${value}なぞ私には興味がない")
	}

	// 値を返すswitch
	println(when (value) {
		0,1 -> "${value}は特別な値である"
		in 8..10 -> "${value}は連続して素数ではない"
		4,6 -> "${value}は素数ではない"
		2,3,5,7 -> "${value}は素数である"
		!is Int -> "これはそもそも整数ではない。論外だ。"
		else -> "${value}なぞ私には興味がない"
	})

	// if else if の省略
	when {
		!test1 -> println("どうやらtest1は偽のようです")
		test2 -> println("どうやらtest2は真のようです")
		!test2 && test1 -> println("真偽が混在しているようです")
		else -> println("どれでもないようです")
	}

	println("\r\n")

}