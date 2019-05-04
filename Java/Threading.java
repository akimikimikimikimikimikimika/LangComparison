
import java.io.*;
public class Threading {

	private static void println(String data) throws IOException{
		System.out.println(data);
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
			try{
				int m = this.order;
				for (int n=1;n<7;n++) println("|("+m+","+n+")| = "+Math.hypot((double)m,(double)n));
			}catch(IOException e){}
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
			try{
				int m = this.order;
				for (int n=1;n<7;n++) println("|("+m+","+n+")| = "+Math.hypot((double)m,(double)n));
			}catch(IOException e){}
		}

		public int order = 0;

		CustomRunnable(int order) {
			this.order = order;
		}

	}

	public static void main(String[] args) throws IOException{

		println("\r\nこれからスレッドを試します\r\n");

		println("\r\nThread\r\n");

		CustomThread[] ct = new CustomThread[9];
		for (int m=1;m<10;m++) ct[m-1] = new CustomThread(m);

		println("開始します");
		for (CustomThread t:ct) t.start();

		// 全ての処理が完了するまで待機
		// 但し, Thread.join() は InterruptedException を発し得るので,エラーの取り扱い(try-catch)をしなければならない
		try{
			println("終了を待ちます");
			for (CustomThread t:ct) t.join();
			println("終了しました");
		}
		catch(InterruptedException e){
			println("処理は中断されました");
			e.printStackTrace();
		}



		println("\r\nRunnable\r\n");

		Thread[] crt = new Thread[9];
		for (int m=1;m<10;m++) {
			CustomRunnable cr = new CustomRunnable(m);
			crt[m-1] = new Thread(cr);
		}

		println("開始します");
		for (Thread t:crt) t.start();

		try{
			println("終了を待ちます");
			for (Thread t:crt) t.join();
			println("終了しました");
		}
		catch(InterruptedException e){
			println("処理は中断されました");
			e.printStackTrace();
		}

		println("\r\n");

	}

}