package main

func Arguments(args []string) {

	DefaultArgs := []string{
		"このデモは,引数を付してコマンドを実行することで体験できます",
		"",
		"コマンドラインに以下のように入力して実行します:",
		"",
		"Go/bin 引数1 引数2…",
		"",
		"すると,引数1,引数2…が順に出力されます",
		"",
	}

	print(ln{1},"このファイルを実行するにあたっての引数は以下の通りです:",ln{2})

	if (len(args)==0) {args=DefaultArgs}
	for n,s := range args {
		print(" ",n+1,": ",s,ln{1})
	}

	print(ln{3})

}
