
import java.io.*;
import java.util.regex.*;

public class RegExp {

	private static void print(String data) throws IOException{
		System.out.print(data);
	}
	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	private static String text="IllUsTrAtE";
	private static String test1="qUiVeR";
	private static String test2="ShIvEr";

	public static void main(String[] args) throws IOException{

		println("\r\nこれから正規表現を試します\r\n");

		println("\r\n検索");
		Matcher m=Pattern.compile("l+").matcher("IllUsTrAtE");
		print(text+" → ");
		if (m.find()) {
			println(m.group()+" ("+m.start()+"~"+m.end()+")");
		}
		else println("マッチしていません");

		println("\r\n置換");
		String text="IllUsTrAtE";
		 // 正規表現が使えない置換
		String newtext=text.replace("l","*");
		println("string.replace: "+text+" → "+newtext);
		 // 正規表現が使える置換
		text="<a> <b> <c>";
		newtext=text.replaceAll("(?i)<([a-z])>","{$1}");
		println("string.replaceAll: "+text+" → "+newtext);
		newtext=text.replaceFirst("(?i)<([a-z])>","{$1}");
		println("string.replaceFirst: "+text+" → "+newtext);

		println("\r\n分割と結合");
		text="a-b-c";
		String[] arr=text.split("-");
		newtext=String.join("*",arr);
		println(text+" → "+newtext);

		println("\r\nマッチの確認");
		if (test1.matches("(?i)qu.*")) println(test1+" はquで始まります");
		else println(test1+" はquで始まりません");
		// string.matchesは完全一致であることに注意
		// (?i)を正規表現中に埋め込むことで,ignoreCaseにできる

		Pattern p=Pattern.compile("(?i)^qu");
		if (p.matcher(test2).find()) println(test2+" はquで始まります");
		else println(test2+" はquで始まりません");

		println("\r\n");

	}

}