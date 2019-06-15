#! /usr/bin/env swift

let test1 = true
let test2 = false

print("\r\nこれから条件分岐を試します\r\n")

if test1 {
	print("どうやらtest1は真のようです")
}

if !test1 {
	print("どうやらtest1は偽のようです")
}
else if test2 {
	print("どうやらtest2は真のようです")
}
else if !test2 && test1 {
	print("真偽が混在しているようです")
}
else {
	print("どれでもないようです")
}

let val:Int = 8
switch val {
	case 0,1:
		print("\(val)は特別な値である")
	case 8...10:
		print("これに隣接する数にも言えたりするが,")
		fallthrough
		// fallthrough により,case 8...10を実行すれば,直下のcase 4,6も実行する
	case 4,6:
		print("\(val)は素数ではない")
	case 2,3,5,7:
		print("\(val)は素数である")
	default:
		print("\(val)なぞ私には興味がない")
}

print("\r\n")