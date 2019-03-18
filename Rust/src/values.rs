pub fn main() {

	use std::collections::HashMap;

	// 文字列
	let st:&str = "ラスト"; // &str = &[u8]
	let st2:String = "ラスト".to_string(); // String = Vec[u8]
	let raw_str:&str = r"
		First line
		Second line
		Third line
	";
	// rを付加すると,Raw文字列となり,文字列内で改行ができる
	let import_quote:&str = r#"Rust is the most "loved" language"#;
	// 更に##で囲むと,""をエスケープせずとも使えるようになる

	// バイト
	let byte:u8 = b'R';
	let _bytes:&[u8] = b"Rust";
	let _raw_bytes:&[u8] = br"
		First line
		Second line
		Third line
	";
	// u8型の数値として認識される

	// 文字
	let character:char = 'ﬁ';

	// 整数
	let int8:i8 = 6;
	let int16:i16 = 6;
	let int32:i32 = 6;
	let int64:i64 = 6;
	let ints:isize = 6; // 実行環境と同じサイズの数値

	// 符号なし整数
	let uint8:u8 = 6;
	let uint16:u16 = 6;
	let uint32:u32 = 6;
	let uint64:u64 = 6;
	let uints:usize = 6; // 実行環境と同じサイズの数値
		//  dec: 12_345 (_で区切ることができる)
		//  hex: 0xff
		//  oct: 0o77
		//  bin: 0b11
	// 浮動小数
	let float:f32 = 6.0f32; // 整数,浮動小数は,数値の後に型を指定できる
	let double:f64 = 6.0f64;
	// 真偽値
	let boolean:bool = true;
	// 範囲
	let _range = 5..8; // 7≤x<9
	// タプル (順序固定で多様な型)
	let _tup:(i64,String,i64,f64,bool) = (1,"second".to_string(),3,3.14,false);
	// 配列 (固定長,静的に大きさが決定,プリミティブ)
	let arr:[&str;3] = ["first","second","third"];
	// ベクタ (可変長)
	let vec:Vec<&str> = vec!["first","second","third"];
	// スライス (固定長,動的に大きさが決定)
	let sli:&[&str] = &["first","second","third"];
	// ハッシュマップ
	let mut hm = HashMap::new();
	hm.insert("Key", "Value");
	// 関数
	fn cube(val: i32) -> i32 {
		val*val*val
	}

	println!("\r\n色々な値を試します");
	println!("文字列");
	println!(" &str:   {}",st);
	println!(" String: {}",st2);
	println!("Raw文字列");
	println!("{}",raw_str);
	println!("{}",import_quote);
	println!("バイト");
	println!(" u8:   {}",byte);
	println!("文字");
	println!(" char: {}",character);
	println!("整数");
	println!(" i8:    {}",int8);
	println!(" i16:   {}",int16);
	println!(" i32:   {}",int32);
	println!(" i64:   {}",int64);
	println!(" isize: {}",ints);
	println!(" u8:    {}",uint8);
	println!(" u16:   {}",uint16);
	println!(" u32:   {}",uint32);
	println!(" u64:   {}",uint64);
	println!(" usize: {}",uints);
	println!("浮動小数");
	println!(" f32: {}",float);
	println!(" f64: {}",double);
	println!("真偽値");
	println!(" bool: {}",boolean);
	println!("配列");
	println!(" [&str:3]:");
	println!("   大きさ {}",arr.len());
	println!("   2番目 {}",arr[2]);
	println!("ベクタ");
	println!(" Vec<&str>:");
	println!("   大きさ {}",vec.len());
	println!("   2番目 {}",vec[2]);
	println!("スライス");
	println!(" [&str]:");
	println!("   大きさ {}",sli.len());
	println!("   2番目 {}",sli[2]);
	println!("関数");
	println!(" 6 → {}",cube(6));

}