#! /usr/bin/swift

// Swift

import Foundation

let cd=URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
let execURL=URL(string: CommandLine.arguments[0], relativeTo: cd) ?? cd

func filePath(_ s:String) -> URL {
	return URL(string: s, relativeTo: execURL) ?? cd
}

func exec(_ s:String) {
	do{
		let p=try Process.run(filePath(s), arguments: [], terminationHandler: nil)
	}catch{
		print("エラーが発生したため,実行できませんでした")
	}
}

func welcome(){
	print("こんにちは。私の名前はSwift。")
	while true {
		print("\r\n\r\n何がしたい?")
		print("1. 標準入出力を試す")
		print("\r\n")
		print("0. 終了")
		print("\r\n")
		let action:String = readLine()!
		print("\r\n\r\n\r\n")
		if action=="1" {
			exec("Swift/Stdinout.swift")
		}
		else if action=="0" {
			break
		}
		else {
			print("指定したアクションは見つかりませんでした")
		}
	}
}

welcome()
