#! /usr/bin/swift

// Swift

func welcome(){
	print("こんにちは。私の名前はSwift,即ちアマツバメです。")
	print("あなたのことを教えてください")
	let aboutYou:String = readLine()!
	print("あなたは"+aboutYou+"ですね。わかりました。")
}

welcome()