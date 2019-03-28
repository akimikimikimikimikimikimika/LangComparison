pub fn main() {
	println!("\r\nこれから演算子を試します\r\n");

	println!("\r\n算術演算子");
	println!("24   + 5   = {}",24  +5  );
	println!("24   - 5   = {}",24  -5  );
	println!("24   * 5   = {}",24  *5  );
	println!("24.0 / 5.0 = {}",24.0/5.0);
	println!("24   % 5   = {}",24  %5  );

	println!("\r\n比較演算子");
	println!("24  < 5 = {}",24 <5);
	println!("24 <= 5 = {}",24<=5);
	println!("24  > 5 = {}",24 >5);
	println!("24 >= 5 = {}",24>=5);
	println!("24 == 5 = {}",24==5);
	println!("24 != 5 = {}",24!=5);

	println!("\r\n論理演算子");
	println!("true && false = {}",true && false);
	println!("true || false = {}",true || false);
	println!("      ! false = {}",      ! false);

}