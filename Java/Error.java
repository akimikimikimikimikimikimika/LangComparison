import java.io.*;

public class Error {

	public static void main(String[] args){

		Utility.nr(1);

		Utility.println("これから例外処理を試します","");

		// try節内で起こりうる例外は捕捉される
		try {
			// 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
			throw new Exception("あなたは過ちを犯した!!");
		}
		// 例外をキャッチすればcatch節が実行される
		catch (IOException e) {
			Utility.println(
				"エラーが発生しました",
				"エラー内容:",
				e.toString()
			);
		}
		// 複数のタイプのエラー型は,それぞれに対応するcatch節で捕捉できる
		// 或いは, ExecutionException | IOException のようにして,複数のタイプを指定することもできる
		catch (Exception e) {
			Utility.println(
				"エラーが発生しました",
				"エラー内容:",
				e.toString()
			);
		}
		// 最後にfinally節が実行される。なくても良い
		finally {
			Utility.println("以上でエラーチェックを終了します");
		}
		/*
			finallyは抜かしても良いが,起こり得るエラーの型に対応するcatch節を全て用意する。
			或いは,catchで捕捉しないエラー型を関数の throws で放り投げることもできる。
		*/

		Utility.nr(1);

		Utility.println("関数を実行してみます");
		try {
			// 以下で定義した関数をするとエラーを発生させ得るので, try-catch で捕捉する。
			ExceptionEmitter();
		}
		catch (Exception e) {
			Utility.println(
				"エラーが発生しました",
				"エラー内容:",
				e.toString()
			);
		}

		Utility.nr(2);

	}

	/*
		この関数のように, throws Exception とすれば,そのエラー型のエラーを関数が発生し得ることを示す
		この関数を利用する側は, try-catch でエラーをカバーしなければならない。
	*/
	private static void ExceptionEmitter() throws Exception {
		throw new Exception("関数が実行できないではないか!");
	}

}