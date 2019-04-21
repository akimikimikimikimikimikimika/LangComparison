
import java.io.*;

public class Loop {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	public static void main(String[] args) throws IOException{

		println("\r\nこれからループ処理を試します\r\n");

		println("\r\nfor (int n=0;n<3;n++) {…}");
		for (int n=0;n<3;n++) println("n="+n+" のループ");

		println("\r\nfor (int n=0,m=2;n<3;n++,m=m+3) {…}");
		for (int n=0,m=2;n<3;n++,m=m+3) {
			println("n="+n+" のループ このとき,m="+m);
		}

		println("\r\nfor (char c:array) {…}");
		char[] cs={'壱','弐','参'};
		for (char c:cs) println("c='"+c+"' のループ");

		println("\r\nwhile (~) {…}");
		String str="";
		while (str.length()<6) {
			str+="*";
			println(str);
		}

		println("\r\ndo {…} while (~)");
		str="";
		do {
			str+="*";
			println(str);
		} while (str.length()<6);

		println("\r\n");

	}

}