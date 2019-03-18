#! /usr/local/bin/ruby

# スカラ
string = "ルビー";
lines = <<"Lines";

First line
Second line
Third line
Lines
lines2 = """

First line
Second line
Third line
""";
char = ?赤; # ?で1文字の文字列型の値を表す
=begin
	変数展開/式展開の仕方
	"The value is #{val*2}"
=end
integer = 6;
float = 0.0375e-6;
complex = 3+1i;
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
ranI = 5..8; # 5≤x≤8
ranE = 5...8; # 5≤x<8
# 関数
def cube(val)
	val ** 3;
end;
# 無名関数
func = ->(val) {
	val ** 2;
};

print """
色々な値を試します

文字列: #{string}
   長さ: #{string.length}
文字列2:
#{lines}
文字: #{char}
数値:
   整数: #{integer},#{func.call(integer)},#{cube(integer)}
   浮動小数: #{float}
   複素数: #{complex}
真偽値: #{boolean}
値なし: #{null}
配列:
   #{array}
   2番目: #{array[2]}
   大きさ: #{array.length}
ハッシュ:
   #{hash}
   b= #{hash[:b]}
   大きさ: #{hash.length}
範囲:
   5≤x≤8 = #{ranI}
   5≤x<8 = #{ranE}
無名関数:
   #{func}
""";

print "\r\n\r\n";