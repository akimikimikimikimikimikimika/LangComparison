#! /usr/local/bin/lua

-- 引数は1番目から (0番目はこのファイルを呼ぶパス)

print("\r\n\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n")

for n=1,#arg,1 do
	print(string.format(" %d: %s",n,arg[n]))
end

print("\r\n\r\n")