crate::use_util!();

pub fn main() {

	pnl(1);

	p!("これからループ処理を試します",1);

	pnl(1);

	p!("for n in 0..3 {{…}}",1);
	for n in 0..3 {
		println!("n={} のループ",n);
	}

	pnl(1);

	p!("for c in array.iter() {{…}}",1);
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

	pnl(1);

	p!("while ~ {{…}}",1);
	let mut string:String="".to_string();
	while string.len()<6 {
		string = string+"*";
		println!("{}",string);
	}

	pnl(1);

	p!("loop {{…break;}}",1);
	string="".to_string();
	loop {
		string = string+"*";
		println!("{}",string);
		if string.len()>=6 {
			break;
		}
	}

}