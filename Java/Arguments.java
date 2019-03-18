
import java.io.*;

public class Arguments {

	private static void print(String data) throws IOException{
		System.out.print(data);
	}

	public static void main(String[] args) throws IOException{

		print("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n");
		int n=1;
		for (String s: args) {
			print(" "+n+": "+s+"\r\n");
			n++;
		}
		print("\r\n\r\n");

	}

}