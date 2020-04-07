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

	public static void pnl(int n) {
		for (int m=0;m<n;m++) System.out.println();
	}

}