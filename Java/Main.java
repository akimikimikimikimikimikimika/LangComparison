// Java

/*
	複数行のコメント
*/
/**
	javadoc コマンドによりドキュメントとして抽出可能なコメント
*/

/*
	コンパイル       make java-build
	実行            make java-run
	実行ファイルの削除 make java-clean
	clean+build    make java-retry

	Makefileを利用してコンパイルを実行する。

	各ファイルごとにコンパイル
		javac *.java
		これにより,それぞれのJavaソースコードに対応する.classファイルが生成される。
		どのJavaソースも他のJavaソースとの依存関係があり,依存関係のあるソース全てをコンパイルして.classファイルを生成しなければ実行できない。
	Javaの実行
		cd Java // カレントディレクトリをJavaにすることを忘れずに
		java Java
			※ .class拡張子を付けないで記載する

*/

public class Main {

	private static String[] arg = {};
	private static String action="";

	private static boolean eq(String text1,String text2) {
		return text1.equals(text2);
	}
	private static boolean aeq(String text) {
		return action.equals(text);
	}

	public static void main(String[] args) {

		if (args.length==0) {
			Utility.println("こんにちは。私の名前はJava。");
			while (true) {
				Utility.nr(2);
				Utility.println(
					"何がしたい?",
					"",
					"1. 標準入出力を試す",
					"2. 色々な値を試す",
					"3. 演算子を試す",
					"4. 条件分岐を試す",
					"5. 繰り返しを試す",
					"6. 数学的演算を試す",
					"7. 文字列を試す",
					"8. 文字列フォーマットを試す",
					"9. 正規表現を試す",
					"a. 日付と時刻を試す",
					"b. クラスを試す",
					"c. 例外処理を試す",
					"d. ファイル操作を試す",
					"e. ファイルパスを試す",
					"f. プロセス系を試す",
					"g. スレッドを試す",
					"h. コマンドライン引数を試す",
					"",
					"0. 終了",
					""
				);

				action=Utility.input();

				Utility.nr(2);

				if (aeq("0")) break;
				else if (aeq("1")) Stdinout.main(arg);
				else if (aeq("2")) Values.main(arg);
				else if (aeq("3")) Operators.main(arg);
				else if (aeq("4")) Condition.main(arg);
				else if (aeq("5")) Loop.main(arg);
				else if (aeq("6")) Mathematics.main(arg);
				else if (aeq("7")) StringType.main(arg);
				else if (aeq("8")) Sprintf.main(arg);
				else if (aeq("9")) RegExp.main(arg);
				else if (aeq("a")) DateTime.main(arg);
				else if (aeq("b")) Class.main(arg);
				else if (aeq("c")) Error.main(arg);
				else if (aeq("d")) FileHandle.main(arg);
				else if (aeq("e")) PathData.main(arg);
				else if (aeq("f")) ProcessHandle.main(arg);
				else if (aeq("g")) Threading.main(arg);
				else if (aeq("h")) Arguments.main(arg);
				else Utility.println("指定したアクションは見つかりませんでした","");
			}
		}
		else if (args.length==1) {
			String key = args[0];
			if (eq(key,"Stdinout")) Stdinout.main(arg);
			else if (eq(key,"Values")) Values.main(arg);
			else if (eq(key,"Operators")) Operators.main(arg);
			else if (eq(key,"Condition")) Condition.main(arg);
			else if (eq(key,"Loop")) Loop.main(arg);
			else if (eq(key,"Math")) Mathematics.main(arg);
			else if (eq(key,"String")) StringType.main(arg);
			else if (eq(key,"Sprintf")) Sprintf.main(arg);
			else if (eq(key,"RegExp")) RegExp.main(arg);
			else if (eq(key,"DateTime")) DateTime.main(arg);
			else if (eq(key,"Class")) Class.main(arg);
			else if (eq(key,"Error")) Error.main(arg);
			else if (eq(key,"File")) FileHandle.main(arg);
			else if (eq(key,"Path")) PathData.main(arg);
			else if (eq(key,"Process")) ProcessHandle.main(arg);
			else if (eq(key,"Thread")) Threading.main(arg);
			else if (eq(key,"Arguments")) Arguments.main(arg);
			else Arguments.main(args);
		}
		else Arguments.main(args);

	}

}