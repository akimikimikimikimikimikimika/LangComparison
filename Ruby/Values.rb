#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

# スカラ
string = "STRING";
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

print "\n色々な値を試します\n";
print "\n文字列:#{string}\n";
print "\n数値:#{number},#{func.call(number)},#{cube(number)}\n";
print "\n真偽値:#{boolean}\n";
print "\n値なし:#{null}\n";
print "\n配列:\n";
print array;
print "\n   2番目:#{array[2]}";
print "\nハッシュ:\n";
print hash;
print "\n   b= #{hash[:b]}";
print "\n範囲:\n";
print ran;
print "\n無名関数:\n";
print func;
print "\n";