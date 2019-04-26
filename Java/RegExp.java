
import java.io.*;
import java.util.regex.*;

public class RegExp {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	private static String text="The Quick Brown Fox Jumps Over The Lazy Dog";

	public static void main(String[] args) throws IOException{

		println("\r\nこれから正規表現を試します\r\n");
		println(text+" → ");

		println("\r\n検索");
		Matcher m=Pattern.compile("(?i)the ([a-z]+) ([a-z]+) fox").matcher(text);
		if (m.find()) {
			println(m.group()+" ("+m.start()+"~"+m.end()+")");
		}
		else println("マッチしていません");

		println("\r\nマッチの確認");
		if (text.matches("(?i).*fox jumps.*")) println("狐が飛んでいます");
		else println("狐は飛んでいません");
		// string.matchesは完全一致であることに注意
		// (?i)を正規表現中に埋め込むことで,ignoreCaseにできる

		Pattern p=Pattern.compile("(?i)dog jumps");
		if (p.matcher(text).find()) println("犬が飛んでいます");
		else println("犬は飛んでいません");

		println("\r\n置換");
		// 正規表現が使えない置換
		String replaced=text.replace("Jump","Skip");
		println("string.replace:\r\n"+replaced);
		// 正規表現が使える置換
		replaced=text.replaceAll("(?i)([a-z]+)o([a-z]+)","« $1ö$2 »");
		println("string.replaceAll:\r\n"+replaced);
		replaced=text.replaceFirst("(?i)([a-z]+)o([a-z]+)","« $1ö$2 »");
		println("string.replaceFirst:\r\n"+replaced);

		println("\r\n分割と結合");
		String[] array=text.split("(the|s)? ");
		String arranged=String.join("_",array);
		println(arranged);

		println("\r\n");

	}

}