
import java.io.*;

public class Arguments {

	private static void print(String data) throws IOException{
		System.out.print(data);
	}

	private static String[] defaultArg = {"このプログラムを直接実行してみよう。","ここにあるよ: Java/bin.jar","","コマンドラインに以下のように入力して実行します","","java -jar Java/bin.jar 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"};

	public static void main(String[] args) throws IOException{

		if (args.length==0) args = defaultArg;

		print("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n");
		int n=1;
		for (String s: args) {
			print(" "+n+": "+s+"\r\n");
			n++;
		}
		print("\r\n\r\n");

	}

}