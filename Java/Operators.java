
import java.io.*;

public class Operators {

	private static PrintStream output = System.out;
	public static void main(String[] args) throws IOException{

		output.print("\r\nこれから演算子を試します\r\n");

		output.print("\r\n\r\n算術演算子");
		output.print("\r\n 24   + 5 = "+(   24   + 5   ));
		output.print("\r\n 24   - 5 = "+(   24   - 5   ));
		output.print("\r\n 24   * 5 = "+(   24   * 5   ));
		output.print("\r\n 24.0 / 5 = "+(   24.0 / 5   ));
		output.print("\r\n 24   % 5 = "+(   24   % 5   ));

		output.print("\r\n\r\n比較演算子");
		output.print("\r\n 24  > 5 = "+(   24  > 5   ));
		output.print("\r\n 24 >= 5 = "+(   24 >= 5   ));
		output.print("\r\n 24  < 5 = "+(   24  < 5   ));
		output.print("\r\n 24 <= 5 = "+(   24 <= 5   ));
		output.print("\r\n 24 == 5 = "+(   24 == 5   ));
		output.print("\r\n 24 != 5 = "+(   24 != 5   ));

		output.print("\r\n\r\n論理演算子");
		output.print("\r\n true && false = "+(   true && false   ));
		output.print("\r\n true || false = "+(   true || false   ));
		output.print("\r\n       ! false = "+(         ! false   ));

		output.print("\r\n\r\n三項演算子");
		output.print("\r\n true ? \"yes\" : \"no\" = \""+(   true ? "yes" : "no"   )+"\"");
		output.print("\r\n false ? \"yes\" : \"no\" = \""+(   false ? "yes" : "no"   )+"\"");

		output.print("\r\n\r\n");

	}

}