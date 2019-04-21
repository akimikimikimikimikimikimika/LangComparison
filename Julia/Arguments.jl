#! /usr/local/bin/julia

println("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n")

n = 0
for s ∈ ARGS
	global n
	println(" $(n): $(s)")
	n+=1
end

println("\r\n")