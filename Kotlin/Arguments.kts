println("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n")

for ((n,c) in args.withIndex()) {
	println(" ${n+1}: $c")
}

println("\r\n")