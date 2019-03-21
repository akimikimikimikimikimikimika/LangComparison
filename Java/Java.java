// Java

/*
	複数行のコメント
*/

/*
	Javaのコンパイル
		javac Java.java Stdinout.java Values.java Operators.java Condition.java Loop.java RegExp.java FileHandle.java PathData.java Mathematics.java DateTime.java Arguments.java
		これにより,それぞれの.classファイルが生成される。Java.classは他の.classファイルが存在しなければ実行できない。それ以外の.classファイルはスタンドアロンでも作動する。
	Javaの実行
		java Java
		.class拡張子を付けないで記載する

*/

import java.io.*;
import java.util.Scanner;

public class Java {

	private static Scanner input = new Scanner(System.in);
	private static void println(String data) throws IOException{
		System.out.println(data);
	}
	private static String[] arg = {};
	private static String[] argsArg = {"このプログラムを直接実行してみよう。","ここにあるよ: Java/Arguments.class","","コマンドラインに以下のように入力して実行します","","java Arguments 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"};
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
			println("6. 正規表現を試す");
			println("7. ファイル操作を試す");
			println("8. ファイルパスを試す");
			println("9. 数学的演算を試す");
			println("a. 日付と時刻を試す");
			println("c. コマンドライン引数を試す");
			println("");
			println("0. 終了");
			println("");
			action=input.next();
			println("\r\n\r\n");
			if (eq("1")) Stdinout.main(arg);
			else if (eq("2")) Values.main(arg);
			else if (eq("3")) Operators.main(arg);
			else if (eq("4")) Condition.main(arg);
			else if (eq("5")) Loop.main(arg);
			else if (eq("6")) RegExp.main(arg);
			else if (eq("7")) FileHandle.main(arg);
			else if (eq("8")) PathData.main(arg);
			else if (eq("9")) Mathematics.main(arg);
			else if (eq("a")) DateTime.main(arg);
			else if (eq("c")) Arguments.main(argsArg);
			else if (eq("0")) break;
			else println("指定したアクションは見つかりませんでした\r\n");
		}
	}
}