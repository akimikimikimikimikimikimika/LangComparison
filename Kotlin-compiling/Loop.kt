fun Loop() {

	println("\r\nこれからループ処理を試します\r\n")

	println("\r\nfor (n in 0..2) {…}\r\n")
	for (n in 0..2) {
		println("n=$n のループ")
	}

	println("\r\nfor (n in 4 until 7) {…}\r\n")
	for (n in 4 until 7) {
		println("n=$n のループ")
	}

	println("\r\nfor (n in 6 downTo 4) {…}\r\n")
	for (n in 6 downTo 4) {
		println("n=$n のループ")
	}

	println("\r\nfor (n in 35..50 step 7) {…}\r\n")
	for (n in 35..50 step 7) {
		println("n=$n のループ")
	}

	print("\r\nfor (c in array) {…}\r\n")
	val cs=arrayOf("壱","弐","参")
	for (c in cs) {
		println("c=\"$c\" のループ")
	}

	print("\r\nfor (n in array.indices) {…}\r\n")
	for (n in cs.indices) { // 値が存在するインデックスでループ
		println("c=\"${cs[n]}\" のループ ($n 番目)")
	}

	print("\r\nfor ((n,c) in array.withIndex()) {…}\r\n")
	for ((n,c) in cs.withIndex()) { // 値とインデックスの両方を取得
		println("c=\"$c\" のループ ($n 番目)")
	}

	println("\r\n")

}