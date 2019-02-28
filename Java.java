// Java

/*
	複数行のコメント
*/

import java.io.*;

public class Java {
	public static void main(String[] args) throws IOException{
		BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
		PrintStream output = System.out;
		output.println("こんにちは。私の名前はJavaです。");
		output.println("私のロゴはコーヒーカップで有名です。");
		output.println("私にはコンパイルが必要です。");
		output.println("あなたのことを教えてください");
		String str = new String(input.readLine());
		output.println("あなたは"+str+"ですね。わかりました。");
	}
}