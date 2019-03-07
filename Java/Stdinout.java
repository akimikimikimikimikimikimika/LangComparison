
import java.io.*;
import java.util.Scanner;

public class Stdinout {

	private static Scanner input = new Scanner(System.in);
	private static PrintStream output = System.out;

	public static void main(String[] args) throws IOException{

		output.println("こんにちは。私の名前はJavaです。");
		output.println("私のロゴはコーヒーカップで有名です。");
		output.println("私にはコンパイルが必要です。");
		output.println("あなたのことを教えてください");
		String str = new String(input.next());
		output.println("あなたは"+str+"ですね。わかりました。");

	}

}