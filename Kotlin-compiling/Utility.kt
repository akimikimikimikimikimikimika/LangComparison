fun printLn(text:String,eol:Int=1) {
	print(text+nl(eol))
}

fun prints(vararg values:Any) {
	for (i in values) println(i)
}

fun nl(lines:Int=1):String {
	val ls=System.lineSeparator()
	var t=""
	for (n in 0..lines) t+=ls
	return t
}

fun pnl(lines:Int=1) {
	print(nl(lines))
}

fun clean(text:String):String {
	var t=text
	t=t.replace("\\n\\t+".toRegex(),"\n")
	t=t.replace("^\\t+".toRegex(),"")
	return t
}