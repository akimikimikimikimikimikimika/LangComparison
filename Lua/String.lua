#! /usr/local/bin/lua

print("\r\nこれから文字列を試します\r\n")

print("\r\nstring.len(\"ルア\") = "..string.format("%d",string.len("ルア")))
print(string.format("#\"abc\" = %d",   #"abc"   ))
print(string.format("\"abc\"..\"def\" = \"%s\"",   "abc".."def"   ))

print("\r\n\r\n\"Lua STRING demo\" →")
print("string.lower() = \""..(   string.lower("Lua STRING demo")   ).."\"")
print("string.upper() = \""..(   string.upper("Lua STRING demo")   ).."\"")

print("\r\nstring.sub(\"string\",1,3) = \""..(   string.sub("string",1,3)   ).."\"") -- pick 1≦x≦3
print("\r\nstring.reverse(\"strings\") = \""..(   string.reverse("strings")   ).."\"")
print("\r\n\"strings\":reverse() = \""..(   "strings":reverse()   ).."\"")
print("\r\nstring.rep(\"abc\",3) = \""..(   string.rep("abc",3)   ).."\"")

print("\r\n")
