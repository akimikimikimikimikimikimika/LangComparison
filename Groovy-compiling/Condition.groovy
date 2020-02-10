static void main(String[] args) {
	
	def test1 = true
	def test2 = false

	println "\r\nこれから条件分岐を試します\r\n"

	if (test1) {
		println "どうやらtest1は真のようです"
	}

	if (!test1) println "どうやらtest1は偽のようです"
	else if (test2) println "どうやらtest2は真のようです"
	else if (!test2 && test1) println "真偽が混在しているようです"
	else println "どれでもないようです"

	def value = 8

	switch(value) {
		case 0:
		case 1:
			println "${value}は特別な値である"
			break
		case 8..10:
			println "これに隣接する数にも言えたりするが,"
			// breakを省くと,case 8,9,10を実行すれば,直下のcase 4,6も実行する
		case [4,6]:
			// caseを配列にすることで,複数のcaseを一纏めにできる
			println "${value}は素数ではない"
			break
		case [2,3,5,7]:
			println "${value}は素数である"
			break
		default:
			println "${value}なぞ私には興味がない"
			break
	}

	println "\r\n"

}