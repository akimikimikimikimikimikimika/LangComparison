
public class Arguments {

	private static String[] defaultArg = {
		"このプログラムを直接実行してみよう。",
		"ここにあるよ: Java/bin.jar",
		"",
		"コマンドラインに以下のように入力して実行します",
		"",
		"java -jar Java/bin.jar 引数1 引数2…",
		"",
		"すると,引数1,引数2…が順に出力されます"
	};

	public static void main(String[] args){

		if (args.length==0) args = defaultArg;

		Utility.pnl(1);

		Utility.println(
			"このファイルを実行するにあたっての引数は以下の通りです:",
			""
		);
		int n=1;
		for (String s: args) {
			Utility.println(" "+n+": "+s);
			n++;
		}
		Utility.pnl(2);

	}

}