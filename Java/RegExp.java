
import java.io.*;
import java.util.regex.*;

public class RegExp {

	private static String text="IllUsTrAtE";
	private static String test1="qUiVeR";
	private static String test2="ShIvEr";

	private static PrintStream output = System.out;

	public static void main(String[] args) throws IOException{

		output.println("\nこれから正規表現を試します\n");

		output.print("\n検索\n");
		Matcher m=Pattern.compile("l+").matcher("IllUsTrAtE");
		output.print(text);
		output.print(" → ");
		if (m.find()) {
			output.print(m.group());
			output.print(" (");
			output.print(m.start());
			output.print("~");
			output.print(m.end());
			output.print(")\n");
		}
		else output.print("マッチしていません\n");

		output.print("\n置換\n");
		String text="IllUsTrAtE";
		 // 正規表現が使えない置換
		String newtext=text.replace("l","*");
		output.print("string.replace: "+text+" → "+newtext+"\n");
		 // 正規表現が使える置換
		text="<a> <b> <c>";
		newtext=text.replaceAll("(?i)<([a-z])>","{$1}");
		output.print("string.replaceAll: "+text+" → "+newtext+"\n");
		newtext=text.replaceFirst("(?i)<([a-z])>","{$1}");
		output.print("string.replaceFirst: "+text+" → "+newtext+"\n");

		output.print("\n分割と結合\n");
		text="a-b-c";
		String[] arr=text.split("-");
		newtext=String.join("*",arr);
		output.print(text+" → "+newtext+"\n");

		output.print("\nマッチの確認\n");
		if (test1.matches("(?i)qu.*")) output.print(test1+" はquで始まります\n");
		else output.print(test1+" はquで始まりません\n");
		// string.matchesは完全一致であることに注意
		// (?i)を正規表現中に埋め込むことで,ignoreCaseにできる

		Pattern p=Pattern.compile("(?i)^qu");
		if (p.matcher(test2).find()) output.print(test2+" はquで始まります\n");
		else output.print(test2+" はquで始まりません\n");

		output.print("\n\n");

	}

}