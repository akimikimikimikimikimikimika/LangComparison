
import java.io.*;
import java.util.Scanner;

public class Stdinout {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}
	private static Scanner input = new Scanner(System.in);

	public static void main(String[] args) throws IOException{

		println("こんにちは。私の名前はJavaです。");
		println("私のロゴはコーヒーカップで有名です。");
		println("私にはコンパイルが必要です。");
		println("あなたのことを教えてください");
		String str = input.next();
		println("あなたは"+str+"ですね。わかりました。");
		println("これから幾つかの出力の仕方を披露しますね。");
		System.out.println("後ろに改行を付けます");
		System.out.print("後ろに改行を付けません。");
		println("入力してみて");
		input.next();
		println("以上です");
	}

}