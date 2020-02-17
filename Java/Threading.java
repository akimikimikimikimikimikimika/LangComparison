public class Threading {

	public static void main(String[] args) {

		Utility.println(

			"",
			"これからスレッドを試します"

		);

		Utility.println("Thread","");

		CustomThread[] ct = new CustomThread[9]; // スレッドオブジェクトを格納する配列
		for (int m=1;m<10;m++) ct[m-1] = new CustomThread(m); // スレッドを構築

		Utility.println("開始します");
		for (CustomThread t:ct) t.start();

		// 全ての処理が完了するまで待機
		// 但し, Thread.join() は InterruptedException を発し得るので,エラーの取り扱い(try-catch)をしなければならない
		try{
			Utility.println("終了を待ちます");
			for (CustomThread t:ct) t.join();
			Utility.println("終了しました");
		}
		catch(InterruptedException e){
			Utility.println("処理は中断されました");
			e.printStackTrace();
		}

		Utility.nr(1);

		Utility.println("Runnable","");

		Thread[] crt = new Thread[9]; // スレッドオブジェクトを格納する配列
		for (int m=1;m<10;m++) { // スレッドを構築
			CustomRunnable cr = new CustomRunnable(m);
			crt[m-1] = new Thread(cr);
		}

		Utility.println("開始します");
		for (Thread t:crt) t.start();

		try{
			Utility.println("終了を待ちます");
			for (Thread t:crt) t.join();
			Utility.println("終了しました");
		}
		catch(InterruptedException e){
			Utility.println("処理は中断されました");
			e.printStackTrace();
		}

		Utility.nr(2);

	}

	/*
		Javaではスレッドの処理内容を指定したカスタムクラスを定義し,クラスからインスタンスを生成してstartすることで並列処理を実現できる
		カスタムクラスは以下の2つのうちどちらかの条件を満たさなければならない
		• Threadを継承する
		• Runnableインターフェイスを実装する
		以下では,それぞれの場合でスレッドを試す。
	*/

	// Threadのサブクラスによるスレッド定義
	private static class CustomThread extends Thread {

		// 処理内容
		public void run() {
			int m = this.order;
			for (int n=1;n<7;n++) Utility.println("|("+m+","+n+")| = "+Math.hypot((double)m,(double)n));
		}

		public int order = 0;

		CustomThread(int order) {
			this.order = order;
		}

	}

	// Runnableの実装によるスレッド定義
	private static class CustomRunnable implements Runnable {

		// 処理内容
		public void run() {
			int m = this.order;
			for (int n=1;n<7;n++) Utility.println("|("+m+","+n+")| = "+Math.hypot((double)m,(double)n));
		}

		public int order = 0;

		CustomRunnable(int order) {
			this.order = order;
		}

	}

}