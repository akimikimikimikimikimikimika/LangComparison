
/*
	Scalaの変数宣言
	valは定数,varは変数である
	つまり, val x で定義した変数xに値を再代入することはできない
*/

// 文字列
val string:String = "スカラ"
val lines:String = """
First line
Second line
Third line
"""
/*
	変数展開/式展開の仕方
	s"The value is $val"
	s"The value is ${val*2}"
	f"The value is $val%d"
		// 他の言語におけるsprintfの実装
	raw"The value is $val"
		// sと似ているが,例えば"\n"に対して,sは改行文字に変換されるが,rawはそのまま"\n"として残る
*/

// 文字
val char:Char = 'ﬁ'

// 数値
val int:Int = 6
val short:Short = 6
val long:Long = 6
val float:Float = 6
val double:Double = 0.0375e-6

// 真偽値
val bool:Boolean = true

// 意味のない値
val unit:Unit = ()
	// 関数は必ず戻り値がなければならないが,そんな時でも返値がないことを示す値型としてUnitを使う。

// リスト
val list:List[Any] = List(
	1,
	"second",
	3,
	3.14,
	false
)

// タプル
val tuple:(Int,String,Int,Double,Boolean) = (1,"second",3,3.14,false)

// 関数 (Javaでのメソッドのこと)
def cube(value:Int):Int = {
	return value*value*value
}

// 無名関数
val func = (value:Int) => value*value

println(s"""

色々な値を試します

文字列: $string
文字列2:
$lines
文字: $char
数値:
   整数: $int,$short,$long
   浮動小数: $float,$double
真偽値: $bool
意味のない値: $unit
リスト: $list
タプル: $tuple
無名関数: $func
""")
/*
	Scalaの値は2種類に大別できる
		• value type: 多くのプリミティブ型
		• reference type: List,Option,カスタムクラス
	スーパークラスが3つ存在する
		• Any: 全ての値のスーパークラス。その名の通り,全ての値が当てはまる。
		• AnyVal: value type のスーパークラス。
		• AnyRef: reference type のスーパークラス。
*/

println("\r\n\r\n")