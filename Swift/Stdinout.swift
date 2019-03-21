#! /usr/bin/swift

var ask=true
if CommandLine.arguments.count>1 {if CommandLine.arguments[1]=="no-stdin" {
	ask=false
}}

print("こんにちは。私の名前はSwift,即ちアマツバメです。")
if ask {
	print("あなたのことを教えてください")
	let aboutYou = readLine() ?? ""
	if aboutYou != "" {
		print("あなたは\(aboutYou)ですね。わかりました。")
	}
	else {
		print("あなたのことがよくわかりませんでした。")
	}
}
else {
	print("""

	あなたのことについては今回は聞かないでおきます。
	直接実行した時にあなたのことを聞きます。

		Swift/Stdinout.swift
	""")
}