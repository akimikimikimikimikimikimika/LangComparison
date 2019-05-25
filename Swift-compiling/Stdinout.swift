
func Stdinout() {

	print("こんにちは。私の名前はSwift,即ちアマツバメです。")
	print("あなたのことを教えてください")
	let aboutYou = readLine() ?? ""
	if aboutYou != "" {
		print("あなたは \(aboutYou) ですね。わかりました。")
	}
	else {
		print("あなたのことがよくわかりませんでした。")
	}

}