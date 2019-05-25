
// Rust

/*
	複数行のコメント
*/

/*
	Unix系でのRustの使い方
	コンパイル
		(cd Rust ; cargo build --target-dir . --manifest-path Cargo.toml ; mv debug/rustdemo bin ; rm -r debug .rustc_info.json)
	実行
		Rust/bin
*/

mod stdinout;
mod values;
mod operators;
mod condition;
mod repeat;
mod regexp;
mod arguments;

use std::env;

fn main() {
	let args:Vec<String> = env::args().collect();
	if args.len()>1 {
		arguments::main();
	}
	else {
		println!(r"

こんにちは。私の名前はRust。
");
		loop {
			println!(r"

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
9. 正規表現を試す
h. コマンドライン引数を試す

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
			else if action == "4" {
				condition::main();
			}
			else if action == "5" {
				repeat::main();
			}
			else if action == "9" {
				regexp::main();
			}
			else if action == "h" {
				arguments::main();
			}
			else {
				println!(r"
指定したアクションは見つかりませんでした

");
			}
		}
	}
}

fn read() -> String {
	let mut s = String::new();
	std::io::stdin().read_line(&mut s).ok();
	s.trim_end().to_string()
}