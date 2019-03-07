
import java.io.*;

public class Loop {

	private static PrintStream output = System.out;

	public static void main(String[] args) throws IOException{

		output.println("\nこれからループ処理を試します\n");

		output.print("\nfor (int n=0;n<3;n++) {…}\n");
		for (Integer n=0;n<3;n++) output.print("n="+n.toString()+"のループ\n");

		output.print("\nfor (int n=0,m=2;n<3;n++,m=m+3) {…}\n");
		for (Integer n=0,m=2;n<3;n++,m=m+3) {
			output.print("n="+n.toString()+"のループ");
			output.print(" このとき, m="+m.toString()+"\n");
		}

		output.print("\nfor (char c:array) {…}\n");
		Character[] cs={'壱','弐','参'};
		for (Character c:cs) output.print("c='"+c.toString()+"'のループ\n");

		output.print("\nwhile (~) {…}\n");
		String str="";
		while (str.length()<6) {
			str+="*";
			output.print(str+"\n");
		}

		output.print("\ndo {…} while (~)\n");
		str="";
		do {
			str+="*";
			output.print(str+"\n");
		} while (str.length()<6);

		output.print("\n\n");

	}

}