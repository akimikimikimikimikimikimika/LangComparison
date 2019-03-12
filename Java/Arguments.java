
import java.io.*;

public class Arguments {

	private static PrintStream output = System.out;
	public static void main(String[] args) throws IOException{

		output.print("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n");
		int n=1;
		for (String s: args) {
			output.print(" ");
			output.print(n);
			output.print(": ");
			output.print(s);
			output.print("\r\n");
			n++;
		}
		output.print("\r\n\r\n");

	}

}