#! /usr/local/bin/lua

-- 文字列
str = "ルア"
lines = [[

First line
Second line
Third line
]]
-- 数値
num = 6
-- 真偽値
bool = true
-- テーブル
tab1 = {1,"second",3,3.14,false}
tab2 = {a=1,b="second",c=3,d=3.14,e=false}
-- 関数
function cube(val)
	return val * val * val
end
-- 無名関数
func = function(val)
	return val * val
end
-- オブジェクト
color = {
	r = 0,
	g = 122,
	b = 255,
	hex = "#007aff",
	colored = true,
	lightness = function()
		return math.max(color.r, color.g, color.b)
	end
}

print("\n色々な値を試します")
print("文字列:"..str)
print("   長さ:"..string.format("%d",string.len(str)))
print("文字列2:")
print(lines)
print("数値:"..string.format("%d,%d,%d",num,func(num),cube(num)))
print("真偽値:"..string.format("%s",bool))
print("テーブル:")
print(tab1)
print("   2番目:"..tab1[2])
print(tab2)
print("   b="..tab2["b"])
print("関数:")
print(cube)
print("無名関数:")
print(func)
print("オブジェクト:")
print(color)
print("   "..string.format("r=%d g=%d b=%d",color.r,color.g,color.b))
print("   "..string.format("lightness=%d",color:lightness()))
