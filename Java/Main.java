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
	private static String[] argsArg = {"このプログラムを直接実行してみよう。","ここにあるよ: Java/Arguments.java","","コマンドラインに以下のように入力して実行します","","cd Java","javac Arguments.java","java Arguments 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"};
	private static String action="";

	private static boolean eq(String text) throws IOException {
		return action.equals(text);
	}

	public static void main(String[] args) throws IOException{
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
			if (eq("0")) break;
			else if (eq("1")) Stdinout.main(arg);
			else if (eq("2")) Values.main(arg);
			else if (eq("3")) Operators.main(arg);
			else if (eq("4")) Condition.main(arg);
			else if (eq("5")) Loop.main(arg);
			else if (eq("6")) Mathematics.main(arg);
			else if (eq("7")) StringType.main(arg);
			else if (eq("8")) Sprintf.main(arg);
			else if (eq("9")) RegExp.main(arg);
			else if (eq("a")) DateTime.main(arg);
			else if (eq("b")) Class.main(arg);
			else if (eq("c")) Error.main(arg);
			else if (eq("d")) FileHandle.main(arg);
			else if (eq("e")) PathData.main(arg);
			else if (eq("f")) ProcessHandle.main(arg);
			else if (eq("g")) Threading.main(arg);
			else if (eq("h")) Arguments.main(argsArg);
			else println("指定したアクションは見つかりませんでした\r\n");
		}
	}
}