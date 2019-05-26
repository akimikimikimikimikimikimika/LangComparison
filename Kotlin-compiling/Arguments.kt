fun Arguments(args: Array<String>) {

	var argv:Array<String> = arrayOf("このプログラムを直接実行してみよう。","ここにあるよ: Kotlin-compiling/bin.jar","","コマンドラインに以下のように入力して実行します","","kotlin Kotlin-compiling/bin.jar 引数1 引数2…","","すると,引数1,引数2…が順に出力されます")
	if (args.size>0) argv=args

	println("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n")

	for ((n,c) in argv.withIndex()) {
		println(" ${n+1}: $c")
	}

	println("\r\n")

}