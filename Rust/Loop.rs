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
	/*
		Vecの場合のイテレーション
		ベクターで要素内の値を順番に扱う方法
		• for c in &cs / for c in cs.iter()
			ベクターの要素を参照形式で取り出す。値はあくまで借用なので,値を書き換える操作などはできない。
		• for c in &mut cs
			書き換え可能な借用参照
		• for c in cs
			ベクター•要素の所有権を取ることができる
	*/

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