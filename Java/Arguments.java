
import java.io.*;

public class Arguments {

	private static PrintStream output = System.out;
	public static void main(String[] args) throws IOException{

		output.print("\nこのファイルを実行するにあたっての引数は以下の通りです:\n\n");
		int n=1;
		for (String s: args) {
			output.print(" ");
			output.print(n);
			output.print(": ");
			output.print(s);
			output.print("\n");
			n++;
		}
		output.print("\n\n");

	}

}