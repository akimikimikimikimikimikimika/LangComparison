fun Condition() {

	val test1 = true
	val test2 = false

	pnl(1)

	printLn("これから条件分岐を試します",2)

	if (test1) {
		printLn("どうやらtest1は真のようです")
	}

	if (!test1) printLn("どうやらtest1は偽のようです")
	else if (test2) printLn("どうやらtest2は真のようです")
	else if (!test2 && test1) printLn("真偽が混在しているようです")
	else printLn("どれでもないようです")

	// Kotlinにおけるwhenは多くの目的で使える便利な表現である。それを1つ1つみていく
	val value:Any = 8

	// 他言語におけるswitchの役割
	when (value) {
		0,1 -> printLn("${value}は特別な値である")
		in 8..10 -> printLn("${value}は連続して素数ではない")
		4,6 -> {
			printLn("${value}は素数ではない")
		} // {}で囲まれた表現も可能
		2,3,5,7 -> printLn("${value}は素数である")
		!is Int -> printLn("これはそもそも整数ではない。論外だ。")
		else -> printLn("${value}なぞ私には興味がない")
	}

	// 値を返すswitch
	printLn(when (value) {
		0,1 -> "${value}は特別な値である"
		in 8..10 -> "${value}は連続して素数ではない"
		4,6 -> "${value}は素数ではない"
		2,3,5,7 -> "${value}は素数である"
		!is Int -> "これはそもそも整数ではない。論外だ。"
		else -> "${value}なぞ私には興味がない"
	})

	// if else if の省略
	when {
		!test1 -> printLn("どうやらtest1は偽のようです")
		test2 -> printLn("どうやらtest2は真のようです")
		!test2 && test1 -> printLn("真偽が混在しているようです")
		else -> printLn("どれでもないようです")
	}

	/*
		whenを使う場合は,whenそれ自体が値を返すので,全ての場合を言い尽くせていなければならない。
		従って, else 節を必ず付けなければならない
	*/

	pnl(2)

}