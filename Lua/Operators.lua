#! /usr/local/bin/lua

print("\r\n\r\nこれから演算子を試します\r\n\r\n")

print("\r\n\r\n算術演算子")
print(string.format("24 +5 = %d",24+5))
print(string.format("24 -5 = %d",24-5))
print(string.format("24 *5 = %d (24×5)",24*5))
print(string.format("24 /5 = %g (24÷5)",24/5))
print(string.format("24 ^5 = %d (24⁵)",24^5))
print(string.format("24 %%5 = %d",24%5))
print("\r\n\r\n比較演算子")
print(string.format("24 <5 = %s",24<5))
print(string.format("24<=5 = %s",24<=5))
print(string.format("24 >5 = %s",24>5))
print(string.format("24>=5 = %s",24>=5))
print(string.format("24==5 = %s",24==5)) -- Equal
print(string.format("24~=5 = %s",24~=5)) -- Not equal
print("\r\n\r\n論理演算子")
print(string.format("true and false = %s",true and false))
print(string.format("true  or false = %s",true or false))
print(string.format("not false = %s",not false))
print("\r\n\r\n長さ")
print(string.format("#\"abc\" = %d",#"abc"))
print("\r\n\r\n文字列連結")
print(string.format("\"abc\"..\"def\" = \"%s\"","abc".."def"))

--[[
	string.formatの整形ルール
	%s : 文字列
	%d : 10進数整数
	%x : 16進数整数 (255 = ff)
	%X : 16進数整数 (255 = FF)
	%g : 実数
	%e : 浮動小数 (255 = 2.55e+2)
	%E : 浮動小数 (255 = 2.55E+2)
]]

print("\r\n")