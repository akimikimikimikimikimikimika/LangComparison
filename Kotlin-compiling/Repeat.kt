fun Repeat() {

	pnl(1)

	printLn("これからループ処理を試します",2)

	pnl(1)

	printLn("for (n in 0..2) {…}",2)
	for (n in 0..2) {
		println("n=$n のループ")
	}

	pnl(1)

	printLn("for (n in 4 until 7) {…}",2)
	for (n in 4 until 7) {
		printLn("n=$n のループ")
	}

	pnl(1)

	println("for (n in 6 downTo 4) {…}",2)
	for (n in 6 downTo 4) {
		printLn("n=$n のループ")
	}

	pnl(1)

	printLn("for (n in 35..50 step 7) {…}",2)
	for (n in 35..50 step 7) {
		printLn("n=$n のループ")
	}

	pnl(1)

	printLn("for (c in array) {…}",2)
	val cs=arrayOf("壱","弐","参")
	for (c in cs) {
		printLn("c=\"$c\" のループ")
	}

	pnl(1)

	printLn("for (n in array.indices) {…}",2)
	for (n in cs.indices) { // 値が存在するインデックスでループ
		printLn("c=\"${cs[n]}\" のループ ($n 番目)")
	}

	pnl(1)

	printLn("for ((n,c) in array.withIndex()) {…}",2)
	for ((n,c) in cs.withIndex()) { // 値とインデックスの両方を取得
		printLn("c=\"$c\" のループ ($n 番目)")
	}

	pnl(1)

	println("while (~) {…}",2)
	var str=""
	while (str.length<6) {
		str+="*"
		printLn(str)
	}

	pnl(1)

	printLn("do {…} while (~)",2)
	str=""
	do {
		str+="*"
		printLn(str)
	} while (str.length<6)

	pnl(2)

}