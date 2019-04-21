pub fn main() {

	println!("\r\nこれからループ処理を試します\r\n");

	println!("\r\nfor n in 0..3 {{…}}");
	for n in 0..3 {
		println!("n={} のループ",n);
	}

	println!("\r\nfor c in array.iter() {{…}}");
	let cs = ["壱","弐","参"];
	for c in cs.iter() {
		println!("c=\"{}\" のループ",c);
	}

	println!("\r\nwhile ~ {{…}}");
	let mut string:String="".to_string();
	while string.len()<6 {
		string = string+"*";
		println!("{}",string);
	}

	println!("\r\nloop {{…break;}}");
	string="".to_string();
	loop {
		string = string+"*";
		println!("{}",string);
		if string.len()>=6 {
			break;
		}
	}

}