package main

import "fmt"

func Condition() {

	test1, test2 := true, false

	fmt.Println("\r\nこれから条件分岐を試します\r\n")

	if (test1) {
		fmt.Println("どうやらtest1は真のようです")
	}

	if (!test1) {
		fmt.Println("どうやらtest1は偽のようです")
	} else if (test2) {
		fmt.Println("どうやらtest2は真のようです")
	} else if (!test2 && test1) {
		fmt.Println("真偽が混在しているようです")
	} else {
		fmt.Println("どれでもないようです")
	}

	var val int = 8

	switch val {
		case 0,1:
			fmt.Println(val,"は特別な値である")
		case 8,9,10:
			fmt.Print("これに隣接する数にも言えたりするが,")
			fallthrough
			// fallthrough により,case 8,9,10を実行すれば,直下のcase 4,6も実行する
		case 4,6:
			fmt.Println(val,"は素数ではない")
		case 2,3,5,7:
			fmt.Println(val,"は素数である")
		default:
			fmt.Println(val,"なぞ私には興味がない")
			switch {
				case val < 0 :
					fmt.Println("なにせ,",val,"は小さすぎるのだ")
				case val > 10 :
					fmt.Println("なにせ,",val,"は大きすぎるのだ")
				case (val > 0)||(val < 10) :
					fmt.Println("なにせ,",val,"は中途半端なのだ")
			}
	}

	fmt.Println("\r\n\r\n")

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