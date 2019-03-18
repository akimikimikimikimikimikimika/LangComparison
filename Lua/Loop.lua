#! /usr/local/bin/lua

print("\r\n\r\nこれからループ処理を試します\r\n\r\n")

print("\r\n\r\nfor n=0,2,1 do … end\r\n\r\n")
for n=0,2,1 do
	print("n="..n.."のループ")
end

print("\r\n\r\nfor n=0,5,2 do … end (偶数回のみ実行)\r\n\r\n")
for n=0,5,2 do
	print("n="..n.."のループ")
end

print("\r\n\r\nfor n,c in pairs(table) do … end\r\n\r\n")
cs={"壱","弐","参"}
for n,c in pairs(cs) do
	print("c=\""..c.."\"のループ ("..n.."番目の要素)")
end

print("\r\n\r\nwhile ~ do … end\r\n\r\n")
local str=""
while string.len(str)<6 do
	str=str.."*"
	print(str)
end

print("\r\n\r\nrepeat … until ~\r\n\r\n")
local str=""
repeat
	str=str.."+"
	print(str)
until string.len(str)==6

print("\r\n\r\n⚠︎ C言語との違い\r\n\r\n")

print("break	: 健在")
print("continue : ない!")

print("\r\n")