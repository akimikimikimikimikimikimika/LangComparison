#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

# スカラ
string = "ルビー";
lines = <<"Lines";

First line
Second line
Third line
Lines
char = ?赤; # ?で1文字の文字列型の値を表す
=begin
	変数展開/式展開の仕方
	"The value is #{val*2}"
=end
number = 6;
boolean = true;
null = nil;
# 配列,リスト
array = [1, "second", 3, 3.14, false];
# ハッシュ
hash = {
	a: 1,
	b: "second",
	c: 3,
	d: 3.14,
	e: false
};
# 範囲
ran = 5..8;
# 関数
def cube(val)
	val ** 3;
end;
# 無名関数
func = ->(val) {
	val ** 2;
};

print "\r\n色々な値を試します\r\n";
print "\r\n文字列:#{string}";
print "\r\n   長さ:#{string.length}";
print "\r\n文字列2:\r\n#{lines}";
print "\r\n文字:#{char}";
print "\r\n数値:#{number},#{func.call(number)},#{cube(number)}";
print "\r\n真偽値:#{boolean}";
print "\r\n値なし:#{null}";
print "\r\n配列:\r\n#{array}";
print "\r\n   2番目:#{array[2]}";
print "\r\n   大きさ:#{array.length}";
print "\r\nハッシュ:\r\n#{hash}";
print "\r\n   b= #{hash[:b]}";
print "\r\n   大きさ:#{hash.length}";
print "\r\n範囲:\r\n#{ran}";
print "\r\n無名関数:\r\n#{func}";

print "\r\n\r\n";