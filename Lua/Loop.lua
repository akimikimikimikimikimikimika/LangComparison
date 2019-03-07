#! /usr/local/bin/lua

print("\nこれからループ処理を試します\n")

print("\nfor n=0,2,1 do … end\n")
for n=0,2,1 do
	print("n="..n.."のループ")
end

print("\nfor n=0,5,2 do … end (偶数回のみ実行)\n")
for n=0,5,2 do
	print("n="..n.."のループ")
end

print("\nfor n,c in pairs(table) do … end\n")
cs={"壱","弐","参"}
for n,c in pairs(cs) do
	print("c=\""..c.."\"のループ ("..n.."番目の要素)")
end

print("\nwhile ~ do … end\n")
local str=""
while string.len(str)<6 do
	str=str.."*"
	print(str)
end

print("\nrepeat … until ~\n")
local str=""
repeat
	str=str.."+"
	print(str)
until string.len(str)==6

print("\n⚠︎ C言語との違い\n")

print("break	: 健在")
print("continue : ない!")
