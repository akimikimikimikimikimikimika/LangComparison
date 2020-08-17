pub fn main(){

	let test1 = true;
	let test2 = false;

	println!("\r\nこれから条件分岐を試します\r\n");

	if test1 {
		println!("どうやらtest1は真のようです");
	}

	if !test1 {
		println!("どうやらtest1は偽のようです");
	}
	else if test2 {
		println!("どうやらtest2は真のようです");
	}
	else if !test2 && test1 {
		println!("真偽が混在しているようです");
	}
	else {
		println!("どれでもないようです");
	}

}