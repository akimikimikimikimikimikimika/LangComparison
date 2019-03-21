
// Rust

/*
	複数行のコメント
*/

/*
	Unix系でのRustの使い方
	コンパイル
		cargo build --target-dir Rust --manifest-path Rust/Cargo.toml ; mv Rust/debug/rustdemo Rust/Demo ; rm -fr Rust/debug Rust/.rustc_info.json
	実行
		Rust/Demo
*/

mod stdinout;
mod values;
mod operators;

fn main() {
	println!(r"

こんにちは。私の名前はRust。
");
	loop {
		println!(r"

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す

0. 終了


");
		let action = read();
		println!("\r\n\r\n");
		if action == "0" {
			break;
		}
		else if action == "1" {
			stdinout::main();
		}
		else if action == "2" {
			values::main();
		}
		else if action == "3" {
			operators::main();
		}
		else {
			println!(r"
指定したアクションは見つかりませんでした

");
		}
	}
}

fn read() -> String {
	let mut s = String::new();
	std::io::stdin().read_line(&mut s).ok();
	s.trim_end().to_string()
}