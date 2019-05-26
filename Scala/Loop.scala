println("\r\nこれからループ処理を試します\r\n")

println("\r\nfor (n <- 0 to 2) {…}\r\n")
for (n <- 0 to 2) {
	println(s"n=$n のループ")
}

println("\r\nfor (n <- 4 until 7) {…}\r\n")
for (n <- 4 until 7) {
	println(s"n=$n のループ")
}

println("\r\nfor (n <- 6 to 4 by -1) {…}\r\n")
for (n <- 6 to 4 by -1) {
	println(s"n=$n のループ")
}

println("\r\nfor (n <- 35 to 50 by 7) {…}\r\n")
for (n <- 35 to 50 by 7) {
	println(s"n=$n のループ")
}

println("\r\nfor (n <- 0 to 2 ; m <- 0 to 2) {…}\r\n")
for (n <- 0 to 2 ; m <- 0 to 2) {
	println(s"n=$n m=$m のループ")
}

println("\r\nfor (n <- 0 to 2 ; m <- 0 to 2 if m>=n) {…}\r\n")
for (n <- 0 to 2 ; m <- 0 to 2 if m>=n) {
	println(s"n=$n m=$m のループ")
}

println("\r\nfor (c <- array) {…}\r\n")
val cs = Array("壱","弐","参")
for (c <- cs) {
	println("c=\""+c+"\" のループ")
}

println("\r\nwhile (~) {…}\r\n")
var str=""
while (str.length<6) {
	str+="*"
	println(str)
}

println("\r\ndo {…} while (~)\r\n")
str=""
do {
	str+="*"
	println(str)
} while (str.length<6)

println("\r\n")