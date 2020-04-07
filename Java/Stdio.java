public class Stdio {

	public static void main(String[] args) {

		Utility.println(
			"こんにちは。私の名前はJavaです。",
			"私のロゴはコーヒーカップで有名です。",
			"私にはコンパイルが必要です。",
			"あなたのことを教えてください"
		);
		String aboutYou = Utility.input();
		Utility.println(
			"あなたは"+aboutYou+"ですね。わかりました。",
			"これから幾つかの出力の仕方を披露しますね。"
		);

		System.out.println("後ろに改行を付けます");
		System.out.print("後ろに改行を付けません。");

		Utility.println("入力してみて");

		// 標準入力は Utility.javaで実装済で,こちらを利用する
		Utility.input();

		Utility.println("以上です");
	}

}