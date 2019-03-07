// Java

/*
	複数行のコメント
*/

/*
	Javaのコンパイル
		javac Java.java Stdinout.java Values.java Operators.java Condition.java Loop.java RegExp.java Arguments.java
		これにより,それぞれの.classファイルが生成される。Java.classは他の.classファイルが存在しなければ実行できない。それ以外の.classファイルはスタンドアロンでも作動する。
	Javaの実行
		java Java
		.class拡張子を付けないで記載する

*/

import java.io.*;
import java.util.Scanner;

public class Java {

	private static Scanner input = new Scanner(System.in);
	private static PrintStream output = System.out;
	private static String[] arg = {};
	private static String[] argsArg = {"このプログラムを直接実行してみよう。","ここにあるよ: Java/Arguments.class","","コマンドラインに以下のように入力して実行します","","java Arguments 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"};
	private static String action="";

	private static boolean eq(String text) throws IOException {
		return action.equals(text);
	}

	public static void main(String[] args) throws IOException{
		output.println("こんにちは。私の名前はJava。");
		while (true) {
			output.println("\n\n何がしたい?\n");
			output.println("1. 標準入出力を試す");
			output.println("2. 色々な値を試す");
			output.println("3. 演算子を試す");
			output.println("4. 条件分岐を試す");
			output.println("5. 繰り返しを試す");
			output.println("6. 正規表現を試す");
			output.println("7. コマンドライン引数を試す");
			output.println("\n0. 終了");
			output.println("\n");
			action=input.next();
			output.println("\n\n\n");
			if (eq("1")) Stdinout.main(arg);
			else if (eq("2")) Values.main(arg);
			else if (eq("3")) Operators.main(arg);
			else if (eq("4")) Condition.main(arg);
			else if (eq("5")) Loop.main(arg);
			else if (eq("6")) RegExp.main(arg);
			else if (eq("7")) Arguments.main(argsArg);
			else if (eq("0")) break;
			else output.println("指定したアクションは見つかりませんでした\n");
		}
	}
}