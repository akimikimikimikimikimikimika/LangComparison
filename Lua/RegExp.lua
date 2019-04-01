#! /usr/local/bin/lua

print("\r\nこれから正規表現を試します\r\n")

print("\r\n\r\n検索")
text="IllUsTrAtE"
found=string.match( text, "[a-z]+" )
print("string.match: "..text.." → "..found)

print("\r\n\r\n置換")
text="<a> <b> <c>"
replaced=string.gsub( text, "%<([a-z])%>", "{%1}" )
print("string.gsub: "..text.." → "..replaced)

print("\r\n")