#! /usr/local/bin/lua

print("\r\nこれから正規表現を試します\r\n")

text="The Quick Brown Fox Jumps Over The Lazy Dog"
print(text.." →")

print("\r\n検索")
found=string.match(text,"the ([a-zA-Z]+) ([a-zA-Z]+) fox")
print("string.match: "..found)

print("\r\n置換")
replaced=string.gsub(text,"(?i)([a-zA-Z]+)o([a-zA-Z]+)", "« %1ö%2 »" )
print("string.gsub:\r\n"..replaced)

-- Luaの正規表現には,大文字/小文字の違いを無視する,所謂"iフラグ"は存在しない

print("\r\n")