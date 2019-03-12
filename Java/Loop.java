
import java.io.*;

public class Loop {

	private static PrintStream output = System.out;

	public static void main(String[] args) throws IOException{

		output.println("\r\nこれからループ処理を試します\r\n");

		output.print("\r\nfor (int n=0;n<3;n++) {…}\r\n");
		for (Integer n=0;n<3;n++) output.print("n="+n.toString()+"のループ\r\n");

		output.print("\r\nfor (int n=0,m=2;n<3;n++,m=m+3) {…}\r\n");
		for (Integer n=0,m=2;n<3;n++,m=m+3) {
			output.print("n="+n.toString()+"のループ");
			output.print(" このとき, m="+m.toString()+"\r\n");
		}

		output.print("\r\nfor (char c:array) {…}\r\n");
		Character[] cs={'壱','弐','参'};
		for (Character c:cs) output.print("c='"+c.toString()+"'のループ\r\n");

		output.print("\r\nwhile (~) {…}\r\n");
		String str="";
		while (str.length()<6) {
			str+="*";
			output.print(str+"\r\n");
		}

		output.print("\r\ndo {…} while (~)\r\n");
		str="";
		do {
			str+="*";
			output.print(str+"\r\n");
		} while (str.length()<6);

		output.print("\r\n\r\n");

	}

}