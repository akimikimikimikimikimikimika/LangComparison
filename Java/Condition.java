
import java.io.*;

public class Condition {

	private static PrintStream output = System.out;

	private static boolean test1 = true;
	private static boolean test2 = false;

	private static int val = 1;

	public static void main(String[] args) throws IOException{

		output.println("\nこれから条件分岐を試します\n");

		if (test1) {
			output.println("どうやらtest1は真のようです");
		}

		if (!test1) output.println("どうやらtest1は偽のようです");
		else if (test2) output.println("どうやらtest2は真のようです");
		else if (!test2&&test1) output.println("真偽が混在しているようです");
		else output.println("どれでもないようです");

		output.print(val);
		switch (val) {
			case 0:case 1:
				output.println("は特別な値である");break;
			case 2:case 4:case 6:
				output.println("は素数ではない");break;
			case 3:case 5:case 7:
				output.println("は素数である");break;
			default:
				output.println("なぞ私には興味がない");break;
		}

		output.print("\n\n");

	}

}