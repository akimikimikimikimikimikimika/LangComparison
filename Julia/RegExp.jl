#! /usr/local/bin/julia

println("\r\nこれから正規表現を試します\r\n")

text="The Quick Brown Fox Jumps Over The Lazy Dog"
println("$(text) → ")

println("\r\n検索")
found=match(r"the ([a-z]+) ([a-z]+) fox"i,text)
println("""
match: $(found.match)
 .captures = $(found.captures)
 .offset   = $(found.offset)
 .offsets  = $(found.offsets)
""")

println("\r\nマッチの確認")
if occursin(r"fox jumps"i,text)
    println("狐が飛んでいます")
else occursin(r"fox jumps"i,text)
    println("狐は飛んでいません")
end
if occursin(r"dog jumps"i,text)
    println("犬が飛んでいます")
else occursin(r"dog jumps"i,text)
    println("犬は飛んでいません")
end

println("\r\n置換")
replaced=replace(text,r"([a-z]+)o([a-z]+)"i => s"« \g<0>ö\g<1> »")
replaced=replace(text,r"(?<former>[a-z]+)o(?<latter>[a-z]+)"i => s"« \g<former>ö\g<latter> »")
println(replaced)

println("\r\n分割と結合")
array=split(text,r"(the|s)? "i)
arranged=join(array,"_")
println(array)
println(arranged)

#=
    正規表現の生成には, r"[a-z]+" のようなものだけではなく, Regex("[a-z]+") もある

    im以外のフラグ:
	x: 正規表現中の空白/改行を無視
=#

println("\r\n")