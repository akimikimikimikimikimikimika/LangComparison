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
}