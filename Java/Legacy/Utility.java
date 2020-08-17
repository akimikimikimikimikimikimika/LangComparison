import java.util.Scanner;

public class Utility {

	public static String input() {
		Scanner s = new Scanner(System.in);
		String text=s.next();
		s.close();
		return text;
	}

	public static void println(String ...args) {
		for (String s:args) System.out.println(s);
	}

	public static String nl(int lines) {
		String t="";
		for (int n=0;n<lines;n++) t+=System.lineSeparator();
		return t;
	}

	public static void pnl(int lines) {
		for (int m=0;m<n;m++) System.out.println();
	}

}