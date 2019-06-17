use std::f64::consts::PI; // PI
use std::f64::consts::E; // E

pub fn main() {
	println!("\r\nこれから数学演算を試します\r\n");

	println!("\r\n進数変換");
	println!("bin2dec 1101111101: {}",0b1101111101);
	println!("oct2dec       1575: {}",0o1575);
	println!("hex2dec        37d: {}",0x37d);

	println!("\r\n定数");
	println!("π = {}",PI);
	println!("e = {}",E);

	println!("\r\n最大/最小");
	println!("3.max(6) = {}",3_f64.max(6_f64));
	println!("3.min(6) = {}",3_f64.min(6_f64));
	// println!("");
	// println!("0.5.clamp(-1,1) = {}",0.5_f64.clamp(-1_f64,1_f64)); // -1≦x≦ 1 ⇒  x
	// println!(" -5.clamp(-1,1) = {}", -5_f64.clamp(-1_f64,1_f64)); //    x≦-1 ⇒ -1
	// println!("  5.clamp(-1,1) = {}",  5_f64.clamp(-1_f64,1_f64)); //    x≧ 1 ⇒  1

	println!("\r\n符号");
	println!("( 18).abs() = {}",( 18_f64).abs());
	println!("(-18).abs() = {}",(-18_f64).abs());
	println!("");
	println!("( 18).signum() = {}",( 18_f64).signum());
	println!("(-18).signum() = {}",(-18_f64).signum());
	println!("(  0).signum() = {}",(  0_f64).signum());

	println!("\r\n数学関数");
	println!("2.powi(10)      = {}",2_f64.powi(10)); // 指数は整数 (i32)
	println!("2.powf(1.651)   = {}",2_f64.powf(1.651_f64)); // 指数は実数 (f64)
	println!("8.recip()       = {}",8_f64.recip()); // = 1/8
	println!("3.sqrt()        = {}",3_f64.sqrt());
	println!("27.cbrt()       = {}",27_f64.cbrt());
	println!("1.145.exp()     = {}",1.145_f64.exp());
	println!("1.651.exp2()    = {}",1.651_f64.exp2()); // = 2^1.651
	println!("1.421.exp_m1()  = {}",1.421_f64.exp_m1()); // = exp(1.421)-1
	println!("23.14.ln()      = {}",23.14_f64.ln());
	println!("129.log(4.7)    = {}",129_f64.log(4.7_f64)); // 129の底4.7の対数
	println!("1385.log10()    = {}",1385_f64.log10());
	println!("8.825.log2()    = {}",8.825_f64.log2());
	println!("l22.14.ln_1p()  = {}",22.14_f64.ln_1p()); // = ln(22.14)+1
	println!("(π/3).sin()     = {}",(PI/3_f64).sin());
	println!("(π/3).cos()     = {}",(PI/3_f64).cos());
	println!("(π/3).tan()     = {}",(PI/3_f64).tan());
	let sc=(PI/3_f64).sin_cos();
	println!("(π/3).sin_cos() = ({},{})",sc.0,sc.1);
	println!("  1.asin()      = {}",  1_f64.asin());
	println!("0.5.acos()      = {}",0.5_f64.acos());
	println!(" -1.atan()      = {}", -1_f64.atan());
	println!("12.atan2(5)     = {}",12_f64.atan2(5_f64));
	println!("12.hypot(5)     = {}",12_f64.hypot(5_f64));
	println!("1.862.sinh()    = {}",1.862_f64.sinh());
	println!("1.811.cosh()    = {}",1.811_f64.cosh());
	println!("0.325.tanh()    = {}",0.325_f64.tanh());

	println!("\r\n角度変換");
	println!("  1.to_radians() = {}",  1_f64.to_radians());
	println!("540.to_degrees() = {}",540_f64.to_degrees());

	println!("\r\n端数処理");
	println!("-3.14.floor() = {}",-3.14_f64.floor()); // 小さい方の整数へ
	println!("-3.14.ceil()  = {}",-3.14_f64.ceil()); // 大きい方の整数へ
	println!("-3.14.trunc() = {}",-3.14_f64.trunc()); // 0に近い方の整数へ
	println!("-3.14.round() = {}",-3.14_f64.round());

}
/*
	Rustの数学系関数は,数値を関数で囲むのではなく,数値に含まれるメソッドとして振る舞う。
	2つ以上のパラメータを要する関数なら,1つ目の値のメソッドとして呼び出し,残りの値を関数の引数として渡す
	e.g. aとbのうち小さい方の値を返す
		○ : a.min(b)
		× : min(a,b)
	尚,これらの関数を使用する際は,1つ目の値はf64でなければならない。
*/