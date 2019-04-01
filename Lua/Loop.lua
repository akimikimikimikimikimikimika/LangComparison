#! /usr/local/bin/lua

print("\r\nこれからループ処理を試します\r\n")

print("\r\n\r\nfor n=0,2,1 do … end")
for n=0,2,1 do
	print("n="..n.."のループ")
end

print("\r\n\r\nfor n=0,5,2 do … end (偶数回のみ実行)")
for n=0,5,2 do
	print("n="..n.."のループ")
end

print("\r\n\r\nfor n,c in pairs(table) do … end")
cs={"壱","弐","参"}
for n,c in pairs(cs) do
	print("c=\""..c.."\"のループ ("..n.."番目の要素)")
end

print("\r\n\r\nwhile ~ do … end")
local str=""
while string.len(str)<6 do
	str=str.."*"
	print(str)
end

print("\r\n\r\nrepeat … until ~")
local str=""
repeat
	str=str.."+"
	print(str)
until string.len(str)==6

print("\r\n\r\n⚠︎ C言語との違い")

print("break	: 健在")
print("continue : ない!")

print("\r\n")