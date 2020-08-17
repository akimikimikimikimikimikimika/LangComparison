#[macro_export]
macro_rules! use_util {
	() => {
		use crate::utility;
		use utility::*;
		use crate::p;
	};
}

extern crate regex;
use regex::Regex;

pub fn read() -> String {
	let mut s = String::new();
	std::io::stdin().read_line(&mut s).ok();
	s.trim_end().to_string()
}

pub fn pnl(lines:isize) {
	for _ in 0..lines { println!(""); }
}

pub fn clean(text:String) -> String {
	let trimmer = Regex::new("^\\t+").unwrap();
	return trimmer.replace_all(&text,"").to_string();
}

#[macro_export]
macro_rules! p {
	($text:expr,$lines:expr) => {
		println!("{}",clean($text.to_string()));
		pnl($lines);
	};
}