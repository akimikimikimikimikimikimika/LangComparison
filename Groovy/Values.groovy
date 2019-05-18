
// 文字列
String string = "グルービー"
String lines = """
First line
Second line
Third line
"""
/*
	変数展開/式展開の仕方
	"The value is $val"
	"The value is ${val*2}"
*/
String slashy = /Slashed but "normal" string/
	// エスケープに/を使う
String dollarSlashy = $/Slashed with dollars but "normal" string/$
	// エスケープに$を使う

// 文字
char character = 'ﬁ'

// 数値
int integer = 6
	// 6i とか 6I でも int型を指定できる
short sh = 6
long lg = 6
	// 6l とか 6L でも long型を指定できる
BigInteger bi = 6
	// java.lang.BigInteger
	// 6g とか 6G でも BigInteger型を指定できる
float fl = 0.0375e-6
	// 6.0f とか 6.0F でも float型を指定できる
double db = 0.0375e-6
	// 6.0d とか 6.0D でも double型を指定できる
BigDecimal bd = 0.0375e-6
	// 6.0g とか 6.0G でも BigDecimal型を指定できる

// 真偽値
boolean bool = true

// リスト
List list = [1,"second",3,3.14,false]

// 配列
String[] array = ["first","second","third"]
	// 配列を使用するには必ず String[] のように型の宣言をする必要がある

// 範囲
ranI = 5..8 // 5≦x≦8
ranE = 5..<8 // 5≦x<8

// 関数
int cube(int val) {
	val ** 3
}

// クロージャ (無名関数)
def func = { val -> val**2 }

println """

色々な値を試します

文字列: $string
文字列2:
$lines
文字列3: $slashy
文字列4: $dollarSlashy
文字: $character
数値:
   整数: $integer,$sh,$lg,$bi
   浮動小数: $fl,$db,$bd
真偽値: $bool
リスト: $list
配列: $array

"""

/*
	展開演算子
	*を使うことで,要素を展開することができる

	• 関数の呼び出しで要素展開
		args=[2,3,4]
		myFunc(1,*args,5) -> myFunc(1,2,3,4,5) を実行するのと同じ

	• リストの定義で要素展開
		part=[2,3,4]
		myList=[1,*part,5] -> myList=[1,2,3,4,5] と同じ

	• マップの定義で要素展開
		part=[b:2,c:3,d:4]
		myMap=[a:1,*:part,e:5] -> myList=[a:1,b:2,c:3,d:4,e:5] と同じ

*/

println "\r\n\r\n"