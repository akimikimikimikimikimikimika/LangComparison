
func Loop() {

	print("\r\nこれからループ処理を試します\r\n")

	// Swift 3 からC言語のような for (n=0;n<...;n++) の表記が使えなくなった

	print("\r\nfor n in 0...2 {…}\r\n")
	for n in 0...2 {
		print("n=\(n) のループ")
	}

	print("\r\nfor n in 0..<3 {…}\r\n")
	for n in 0..<3 {
		print("n=\(n) のループ")
	}
	print("\r\nfor c in array {…}\r\n")
	let cs=["壱","弐","参"]
	for c in cs {
		print("c=\"\(c)\" のループ")
	}

	print("\r\nwhile ~ {…}\r\n")
	var str:String=""
	while str.count<6 {
		str+="*"
		print(str)
	}

	print("\r\nrepeat {…} while ~\r\n")
	str=""
	repeat {
		str+="+"
		print(str)
	} while str.count<6

	print("\r\n")

}