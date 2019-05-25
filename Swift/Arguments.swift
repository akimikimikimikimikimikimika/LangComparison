#! /usr/bin/swift

let args = CommandLine.arguments

print("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n")

var n:Int = 0
for s in args {
	if n>0 {
		print(" \(n): \(s)")
	}
	n+=1
}

print("\r\n")