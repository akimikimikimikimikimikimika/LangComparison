// Java

/*
	複数行のコメント
*/
/**
	javadoc コマンドによりドキュメントとして抽出可能なコメント
*/

/*
	Javaのコンパイル
		cd Java // カレントディレクトリをJavaにすることを忘れずに
		javac *.java
		これにより,それぞれのJavaコードに対応する.classファイルが生成される。Java.classは他の.classファイルが存在しなければ実行できない。それ以外の.classファイルはスタンドアロンでも作動する。
	Javaの実行
		cd Java // カレントディレクトリをJavaにすることを忘れずに
		java Java
			※ .class拡張子を付けないで記載する
	Javaのパッケージング
		(cd Java ; javac *.java ; zip -q ../Java.jar *.class META-INF/MANIFEST.MF ; rm *.class)
			1. カレントディレクトリをJavaに変更
			2. 全ての.javaファイルをコンパイルし,それぞれの.classを生成
			3. ファイル名が Java.jar のzipアーカイブを生成し,クラスとメタ情報を入れる
			4. 生成した.classを全て削除する
			5. カレントディレクトリを上位フォルダに戻す
		これにより,全てのclassが1つに纏まったjarアーカイブ (Java ARchive) を生成する
		実行 : java -jar Java.jar

*/

import java.io.*;
import java.util.Scanner;

public class Main {

	private static Scanner input = new Scanner(System.in);
	private static void println(String data) throws IOException{
		System.out.println(data);
	}
	private static String[] arg = {};
	private static String action="";

	private static boolean eq(String text1,String text2) throws IOException {
		return text1.equals(text2);
	}

	private static boolean aeq(String text) throws IOException {
		return eq(action,text);
	}

	public static void main(String[] args) throws IOException{

		if (args.length==0) {
			println("こんにちは。私の名前はJava。");
			while (true) {
				println("\r\n\r\n何がしたい?\r\n");
				println("1. 標準入出力を試す");
				println("2. 色々な値を試す");
				println("3. 演算子を試す");
				println("4. 条件分岐を試す");
				println("5. 繰り返しを試す");
				println("6. 数学的演算を試す");
				println("7. 文字列を試す");
				println("8. 文字列フォーマットを試す");
				println("9. 正規表現を試す");
				println("a. 日付と時刻を試す");
				println("b. クラスを試す");
				println("c. 例外処理を試す");
				println("d. ファイル操作を試す");
				println("e. ファイルパスを試す");
				println("f. プロセス系を試す");
				println("g. スレッドを試す");
				println("h. コマンドライン引数を試す");
				println("");
				println("0. 終了");
				println("");
				action=input.next();
				println("\r\n\r\n");
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
				else println("指定したアクションは見つかりませんでした\r\n");
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