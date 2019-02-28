#! /usr/local/bin/lua

print("\nこのファイルを実行するにあたっての引数は以下の通りです:\n")

for n=1,#arg,1 do
	print(string.format(" %d: %s",n,arg[n]))
end
print("\n")