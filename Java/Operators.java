
import java.io.*;

public class Operators {

	private static PrintStream output = System.out;
	public static void main(String[] args) throws IOException{

		output.print("\nこれから演算子を試します\n");

		output.print("\n\n算術演算子");
		output.print("\n 24   + 5 = ");output.print(   24   + 5   );
		output.print("\n 24   - 5 = ");output.print(   24   - 5   );
		output.print("\n 24   * 5 = ");output.print(   24   * 5   );
		output.print("\n 24.0 / 5 = ");output.print(   24.0 / 5   );
		output.print("\n 24   % 5 = ");output.print(   24   % 5   );

		output.print("\n\n比較演算子");
		output.print("\n 24  > 5 = ");output.print(   24  > 5   );
		output.print("\n 24 >= 5 = ");output.print(   24 >= 5   );
		output.print("\n 24  < 5 = ");output.print(   24  < 5   );
		output.print("\n 24 <= 5 = ");output.print(   24 <= 5   );
		output.print("\n 24 == 5 = ");output.print(   24 == 5   );
		output.print("\n 24 != 5 = ");output.print(   24 != 5   );

		output.print("\n\n論理演算子");
		output.print("\n true && false = ");output.print(   true && false   );
		output.print("\n true || false = ");output.print(   true || false   );
		output.print("\n       ! false = ");output.print(         ! false   );

		output.print("\n\n三項演算子");
		output.print("\n true ? \"yes\" : \"no\" = \""+(   true ? "yes" : "no"   )+"\"");
		output.print("\n false ? \"yes\" : \"no\" = \""+(   false ? "yes" : "no"   )+"\"");

		output.print("\n\n");

	}

}