#! /usr/local/bin/lua

print("\nこれから正規表現を試します\n")

print("\n検索")
text="IllUsTrAtE"
found=string.match( text, "[a-z]+" )
print("string.match: "..text.." → "..found)
print("\n置換")
text="<a> <b> <c>"
newtxt=string.gsub( text, "%<([a-z])%>", "{%1}" )
print("string.gsub: "..text.." → "..newtxt)
