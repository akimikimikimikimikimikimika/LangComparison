extern crate regex;
use regex::Regex;
/*
	Rustに正規表現は標準付属していないので,Crateのregexを利用する。
	そのために,Cargo.tomlの[dependeicies]に次の項目を追加する。
		regex = "1"
	詳しくは, https://docs.rs/regex/ で。
*/

pub fn main() {

	println!("\r\nこれから正規表現を試します\r\n");

	println!("\r\n検索");
	let mut text = "Helium Neon Argon Krypton Xenon";
	let mut re = Regex::new("(?i)([a-z]{2})[a-z]+").unwrap();
	for found in re.captures_iter(text) {
		println!("{}: {}",&found[1],&found[0]);
	}

	println!("\r\n置換");
	text = "<a> <b> <c>";
	re = Regex::new("(?i)<(?P<x>[a-z])>").unwrap(); // ?P<x> とすることで,置換の際の変数名xが指定できる
	let replaced = re.replace(text,"{$x}");
	println!("replace:	 {} → {}",text,replaced);
	let replaced = re.replace_all(text,"{$x}");
	println!("replace_all: {} → {}",text,replaced);

	println!("\r\n分割と結合");
	text="a-b-c";
	re = Regex::new("-").unwrap();
	let split:Vec<&str> = re.split(text).collect();
	let arranged = split.join(".");
	println!("{} → {}",text,arranged);

	println!("\r\nマッチの確認");
	let test1 = "qUiVeR";
	let test2 = "ShIvEr";
	re = Regex::new("(?i)^qu").unwrap();
	if re.is_match(test1) {
		println!("{} はquで始まります",test1);
	}
	else {
		println!("{} はquで始まりません",test1);
	}
	if re.is_match(test2) {
		println!("{} はquで始まります",test2);
	}
	else {
		println!("{} はquで始まりません",test2);
	}

}