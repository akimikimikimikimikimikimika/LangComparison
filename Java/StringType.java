
import java.io.*;

public class StringType {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	public static void main(String[] args) throws IOException{

		println("これから文字列を試します");

		println("\r\n長さ");
		println("\"ジャバ\".length() = "+(   "ジャバ".length()   ));

		println("\r\n大文字/小文字の切替");
		println("\"Java STRING demo\" →");
		println(".toUpperCase() = \""+(   "Java STRING demo".toUpperCase()   )+"\"");
		println(".toLowerCase() = \""+(   "Java STRING demo".toLowerCase()   )+"\"");

		println("\r\n検索");
		println("\"abracadabra\" →");
		println(".contains(\"a\")   = "+(   "abracadabra".contains("a")   ));
		println(".startsWith(\"a\") = "+(   "abracadabra".startsWith("a")   ));
		println(".endsWith(\"a\")   = "+(   "abracadabra".endsWith("a")   ));
		println(".indexOf(\"acad\") = "+(   "abracadabra".indexOf("acad")   ));
		println(".lastIndexOf(\"acad\") = "+(   "abracadabra".lastIndexOf("acad")   ));

		println("\r\n部分文字列の取り出し");
		println("\"string\" →");
		println(".substring(1,3) = \""+(   "string".substring(1,3)   )+"\""); // pick 1≦x<3

		println("\r\n前後の空白の除去");
		println("\"   redundant   \".trim() = \""+(   "   redundant   ".trim()   )+"\"");

		println("\r\n");

	}
}