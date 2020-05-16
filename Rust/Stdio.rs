crate::use_util!();

pub fn main() {

	p!(r"
		こんにちは。私の名前はRustです。
		つまり,私は錆です。
		私にはコンパイルが必要です。
		あなたのことを教えてください。
	",1);
	let mut s = String::new();
	std::io::stdin().read_line(&mut s).ok();
	let about_you:&str = s.trim_end();
	println!("あなたは {} ですね。わかりました。",about_you);
	pnl(1);
	p!("これから幾つかの出力の仕方を披露しますね。",1);
	println!("後ろに改行を付けます");
	print!("後ろに改行を付けません。");
	println!("数値などを文字列形式にフォーマットできます: {}",3.14);
	eprintln!("たまにはエラーも出したくなります。");
	eprint!("2回もエラーを出したくなります。改行を付けません。");
	p!("以上です。",1);

	pnl(2);

}