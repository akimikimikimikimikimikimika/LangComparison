func Arguments(_ argv:[String]) {

	var args:[String]=[]
	if argv.count>0 {args=argv}
	else {args=["Build","このプログラムを直接実行してみよう。","ここにあるよ: Swift-compiling/Build","","コマンドラインに以下のように入力して実行します","","Swift-compiling/Build 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"]}

	print("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n")

	var n:Int = 0
	for s in args {
		if n>0 {
			print(" \(n): \(s)")
		}
		n+=1
	}

	print("\r\n")

}