#! /usr/bin/env lua

print("\r\nこれから文字列フォーマットを試します\r\n")

print("整数")
print("string.format(\"%u\",255) = \""..(   string.format("%u",255)   ).."\" (符号なし整数)")
print("string.format(\"%d\",255) = \""..(   string.format("%d",255)   ).."\" (DEC)")
print("string.format(\"%o\",255) = \""..(   string.format("%o",255)   ).."\" (OCT)")
print("string.format(\"%x\",255) = \""..(   string.format("%x",255)   ).."\" (HEX)")
print("string.format(\"%X\",255) = \""..(   string.format("%X",255)   ).."\" (HEX)")

print("\r\n実数")
print("string.format(\"%f\",0.018) = \""..(   string.format("%f",0.018)   ).."\"")
print("string.format(\"%g\",0.018) = \""..(   string.format("%g",0.018)   ).."\"")
print("string.format(\"%e\",0.018) = \""..(   string.format("%e",0.018)   ).."\"")
print("string.format(\"%E\",0.018) = \""..(   string.format("%E",0.018)   ).."\"")

print("\r\n文字")
print("string.format(\"%c\",115)   = \""..(     string.format("%c",115)     ).."\"")
print("string.format(\"%s\",\"abc\") = \""..(   string.format("%s","abc")   ).."\"")

print("\r\n基数の表記")
print("string.format(\"%#o\",255) = \""..(   string.format("%#o",255)   ).."\"")
print("string.format(\"%#x\",255) = \""..(   string.format("%#x",255)   ).."\"")
print("string.format(\"%#X\",255) = \""..(   string.format("%#X",255)   ).."\"")

print("\r\n正負の表記")
print("string.format( \"%d\",+18) = \""..(   string.format( "%d", 18)   ).."\"")
print("string.format(\"%+d\",+18) = \""..(   string.format("%+d", 18)   ).."\"")
print("string.format(\"% d\",+18) = \""..(   string.format("% d", 18)   ).."\"")
print("string.format( \"%d\",-18) = \""..(   string.format( "%d",-18)   ).."\"")
print("string.format(\"%+d\",-18) = \""..(   string.format("%+d",-18)   ).."\"")
print("string.format(\"% d\",-18) = \""..(   string.format("% d",-18)   ).."\"")

print("\r\n精度")
print("string.format(\"%.3d\",18)    = \""..(     string.format("%.3d",18)      ).."\" (u,d,b,o,x: 整数桁数)")
print("string.format(\"%.3f\",0.018) = \""..(     string.format("%.3f",0.018)   ).."\" (f: 小数点以下の桁数)")
print("string.format(\"%.3e\",0.018) = \""..(     string.format("%.3e",0.018)   ).."\" (e,g: 有効桁数-1)")
print("string.format(\"%.2s\",\"abc\") = \""..(   string.format("%.2s","abc")   ).."\" (s: 文字数)")

print("\r\n幅")
print("string.format(\"%10d\",18)     = \""..(     string.format("%10d",18)      ).."\"")
print("string.format(\"%10f\",0.018)  = \""..(     string.format("%10f",0.018)   ).."\"")
print("string.format(\"%10e\",0.018)  = \""..(     string.format("%10e",0.018)   ).."\"")
print("string.format(\"%10s\",\"ab\")   = \""..(   string.format("%10s","ab")    ).."\"")

print("\r\n0埋め")
print("string.format(\"%010d\",18)    = \""..(     string.format("%010d",18)      ).."\"")
print("string.format(\"%010f\",0.018) = \""..(     string.format("%010f",0.018)   ).."\"")
print("string.format(\"%010e\",0.018) = \""..(     string.format("%010e",0.018)   ).."\"")

print("\r\n左寄せ")
print("string.format( \"%10d\",18) = \""..(   string.format("%10d",18)    ).."\"")
print("string.format(\"%-10d\",18) = \""..(   string.format("%-10d",18)   ).."\"")

print("\r\n組合せ")
print("string.format(\"%d年%d月%d日\",2007,7,14) = \""..(   string.format("%d年%d月%d日",2007,7,14)   ).."\"")
print("string.format(\"x = %+08.2f\",0.375)      = \""..(   string.format("x = %+08.2f",0.375)      ).."\"")

print("\r\n")
