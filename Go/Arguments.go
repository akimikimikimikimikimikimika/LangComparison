package main

func Arguments(args []string) {

	print(ln{1},"このファイルを実行するにあたっての引数は以下の通りです:",ln{2})

	if (len(args)>0) {
		for n,s := range args {
			print(" ",n+1,": ",s,ln{1})
		}
	}

	print(ln{3})

}