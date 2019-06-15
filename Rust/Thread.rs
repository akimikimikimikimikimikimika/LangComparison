use std::thread;

pub fn main() {

	println!("\r\nこれからスレッドを試します\r\n");

	// 9個のスレッドそれぞれで6回のループ

	let mut threads:Vec<thread::JoinHandle<()>> = Vec::new(); // JoinHandleオブジェクトを格納する配列

	for m in 1..10 {
		let t=thread::spawn(move || {
			for n in 1..7 {
				println!("|({},{})| = {}",m,n,(m as f64).hypot(n as f64));
			}
		});
		threads.push(t);
	}

	println!("スレッドの終了を待ちます");
	for t in threads {
		t.join().unwrap(); // スレッドtの終了を待つ
	}
	println!("スレッドは終了しました");
	// 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
	// このコードを実行する毎に,順番は変化する

}