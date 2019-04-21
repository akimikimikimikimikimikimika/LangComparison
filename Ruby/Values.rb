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
=begin
   String.to_c でも複素数が生成できるが,ここでは,以下の表記法がとれる
   • "3+6i".to_c # 実部+虚部i
   • "3+6j".to_c # 実部+虚部j
   • "3@6".to_c  # 絶対値@偏角
=end
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
ranI = 5..8; # 5≦x≦8
ranE = 5...8; # 5≦x<8
# 関数
def cube(val)
	val ** 3;
end;
# 無名関数
func = ->(val) {
	val ** 2;
};
   # Rubyの関数は最後の文の内容が自動的にreturnされる。
   # returnして欲しくない場合は,例えば, nil; という行を後ろに追加する。

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

=begin
	Rubyのブロック : do…end 又は { }
	Rubyの変数は,自動的にクローズ参照する仕様であり,大文字で始まる変数名を極力使わないようにすればよい。
	グローバル変数は宣言した場所に依らず,至るところからアクセス可能な変数。
	ブロック変数は,ブロック内で変数宣言した際に,そのブロック内でのみアクセス可能な変数。
	ローカル変数は,宣言した領域内(クラス,メソッド,ファイル等)でのみアクセス可能な変数。

	グローバル変数 : $var
	ブロック内変数 : |var|
	ローカル変数 : var
	定数 : VAR
		大文字で始めると定数扱いになる。但し,定数を上書きすることは可能。警告が表示されるだけ。
=end

print "\r\n\r\n";