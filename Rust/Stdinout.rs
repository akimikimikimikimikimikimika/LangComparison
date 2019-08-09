pub fn main() {
	println!("こんにちは。");
	println!("私の名前はRustです。");
	println!("つまり,私は錆です。");
	println!("私にはコンパイルが必要です。");
	println!("あなたのことを教えてください。");
	let mut s = String::new();
	std::io::stdin().read_line(&mut s).ok();
	let about_you:&str = s.trim_end();
	println!("あなたは {} ですね。わかりました。",about_you);
	println!("");
	println!("これから幾つかの出力の仕方を披露しますね。");
	println!("後ろに改行を付けます");
	print!("後ろに改行を付けません。");
	println!("数値などを文字列形式にフォーマットできます: {}",3.14);
	eprintln!("たまにはエラーも出したくなります。");
	eprint!("2回もエラーを出したくなります。改行を付けません。");
	println!("以上です。");
}