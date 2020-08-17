
use std::env;

pub fn main() {

	let args:Vec<String> = env::args().collect();

	if args.len()>1 {
		println!("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n");

		for n in 1..args.len() {
			println!(" {}: {}",n,args[n]);
		}
	}
	else {
		println!("このデモは,引数を付してコマンドを実行することで体験できます");
		println!("");
		println!("コマンドラインに以下のように入力して実行します:");
		println!("");
		println!("Rust/bin 引数1 引数2…");
		println!("");
		println!("すると,引数1,引数2…が順に出力されます");
	}

	println!("\r\n")

}