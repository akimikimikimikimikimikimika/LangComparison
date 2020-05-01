#! /usr/bin/env julia

println("\r\nこれからループ処理を試します\r\n")

println("\r\nfor n = 0:2 …end\r\n")
for n = 0:2
	println("n=$(n) のループ")
end

println("\r\nfor n = 3.5:0.7:5 …end\r\n")
for n = 3.5:0.7:5
	println("n=$(n) のループ")
end

println("\r\nfor n = 0:2, m = n:2 …end\r\n")
for n = 0:2, m = n:2
	println("n=$(n) m=$(m) のループ")
end

println("\r\nfor c ∈ array …end\r\n") # ∈ の他に, in や = でも問題ない
cs=["壱","弐","参"]
for c ∈ cs
	println("c=\"$(c)\" のループ")
end

println("\r\nwhile ~ … end")
string=""
while length(string)<6
	global string
	string*="*"
	println(string)
end

println("\r\n")