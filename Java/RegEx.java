import java.util.regex.*;

public class RegEx {

	private static String text="The Quick Brown Fox Jumps Over The Lazy Dog";

	public static void main(String[] args) {

		Utility.println(
			"",
			"これから正規表現を試します",

			"",

			text+" → ",
			""
		);

		Utility.println("検索");
		Matcher m=Pattern.compile("(?i)the ([a-z]+) ([a-z]+) fox").matcher(text);
		if (m.find()) {
			Utility.println(m.group()+" ("+m.start()+"~"+m.end()+")");
		}
		else Utility.println("マッチしていません");

		Utility.pnl(1);

		Utility.println("マッチの確認");
		if (text.matches("(?i).*fox jumps.*")) Utility.println("狐が飛んでいます");
		else Utility.println("狐は飛んでいません");
			// string.matchesは完全一致であることに注意 (前後に .* を付加して部分一致にする)
			// (?i)を正規表現中に埋め込むことで,ignoreCaseにできる

		Pattern p=Pattern.compile("(?i)dog jumps");
		if (p.matcher(text).find()) Utility.println("犬が飛んでいます");
		else Utility.println("犬は飛んでいません");

		Utility.pnl(1);

		Utility.println("置換");
		// 正規表現が使えない置換
		String replaced=text.replace("Jump","Skip");
		Utility.println(
			"string.replace:",
			replaced
		);
		// 正規表現が使える置換
		replaced=text.replaceAll("(?i)([a-z]+)o([a-z]+)","« $1ö$2 »");
		Utility.println(
			"string.replaceAll:",
			replaced
		);
		replaced=text.replaceFirst("(?i)([a-z]+)o([a-z]+)","« $1ö$2 »");
		Utility.println(
			"string.replaceFirst:",
			replaced
		);

		Utility.pnl(1);

		Utility.println("分割と結合");
		String[] array=text.split("(the|s)? ");
		String arranged=String.join("_",array);
		Utility.println(arranged);

		Utility.pnl(2);

	}

}