package main

func Condition() {

	test1, test2 := true, false

	print(ln{1},"これから条件分岐を試します",ln{2})

	if (test1) {
		print("どうやらtest1は真のようです",ln{1})
	}

	if (!test1) {
		print("どうやらtest1は偽のようです",ln{1})
	} else if (test2) {
		print("どうやらtest2は真のようです",ln{1})
	} else if (!test2 && test1) {
		print("真偽が混在しているようです",ln{1})
	} else {
		print("どれでもないようです",ln{1})
	}

	var val int = 8

	switch val {
		case 0,1:
			print(val,"は特別な値である",ln{1})
		case 8,9,10:
			print("これに隣接する数にも言えたりするが,")
			fallthrough
			// fallthrough により,case 8,9,10を実行すれば,直下のcase 4,6も実行する
		case 4,6:
			print(val,"は素数ではない",ln{1})
		case 2,3,5,7:
			print(val,"は素数である",ln{1})
		default:
			print(val,"なぞ私には興味がない",ln{1})
			switch {
				case val < 0 :
					print("なにせ,",val,"は小さすぎるのだ",ln{1})
				case val > 10 :
					print("なにせ,",val,"は大きすぎるのだ",ln{1})
				case (val > 0)||(val < 10) :
					print("なにせ,",val,"は中途半端なのだ",ln{1})
			}
	}

	print(ln{3})

}

/*
	Go では次のように if 節の終了直後に else を置かなければならないみたい
	elseの直前に改行があってはいけない
	if {
		// something
	} else {
		// something
	}
*/