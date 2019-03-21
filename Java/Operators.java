
import java.io.*;

public class Operators {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}
	public static void main(String[] args) throws IOException{

		println("これから演算子を試します");

		println("\r\n算術演算子");
		println(" 24   + 5 = "+(   24   + 5   ));
		println(" 24   - 5 = "+(   24   - 5   ));
		println(" 24   * 5 = "+(   24   * 5   ));
		println(" 24.0 / 5 = "+(   24.0 / 5   ));
		println(" 24   % 5 = "+(   24   % 5   ));

		println("\r\n比較演算子");
		println(" 24  > 5 = "+(   24  > 5   ));
		println(" 24 >= 5 = "+(   24 >= 5   ));
		println(" 24  < 5 = "+(   24  < 5   ));
		println(" 24 <= 5 = "+(   24 <= 5   ));
		println(" 24 == 5 = "+(   24 == 5   ));
		println(" 24 != 5 = "+(   24 != 5   ));

		println("\r\n論理演算子");
		println(" true && false = "+(   true && false   ));
		println(" true || false = "+(   true || false   ));
		println("       ! false = "+(         ! false   ));

		println("\r\n三項演算子");
		println(" true ? \"yes\" : \"no\" = \""+(   true ? "yes" : "no"   )+"\"");
		println(" false ? \"yes\" : \"no\" = \""+(   false ? "yes" : "no"   )+"\"");

		println("\r\n");

	}

}