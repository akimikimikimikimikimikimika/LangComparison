println "\r\nこれからループ処理を試します\r\n"

println "\r\nfor (n in 0..2) {…}\r\n"
for (n in 0..2) {
	println "n=$n のループ"
}

println "\r\nfor (n in 0..<3) {…}\r\n"
for (n in 0..<3) {
	println "n=$n のループ"
}

println "\r\nfor (c in array) {…}\r\n"
def cs = ["壱","弐","参"]
for (c in cs) {
	println "c=\"$c\" のループ"
}

println "\r\nwhile (~) {…}\r\n"
def str=""
while (str.length()<6) {
	str+="*"
	println str
}
	// Groovyには do-while は存在しない

println "\r\n"