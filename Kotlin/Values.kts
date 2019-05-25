
// 文字列
val string:String = "コトリン"
val lines="""
First line
Second line
Third line
"""
/*
	変数展開•式展開の仕方
	"The value is $val"
	"The value is ${val*2}"
*/

// 文字
val char:Char = 'ﬁ'

// 整数
val byte:Byte = 6
val short:Short = 6
val int:Int = 6
val long:Long = 6

// 浮動小数
val float:Float = .0375e-6f // fを付加してFloat型にする
val double:Double = .0375e-6

// 真偽値
val bool:Boolean = true

// 配列
val array:Array<Int> = arrayOf(3,1,4)
	/*
		Array を使用する場合は,Arrayの含む型を宣言しなければならない。
		任意の型の値が入る場合は, Array<Any> を用いる。
		[a,b,c...] という配列宣言はできないみたい。
	*/

println("""

色々な値を試します

文字列1: $string
文字列2:
$lines
文字: $char
数値:
   整数: $byte, $short, $int, $long
   浮動小数: $float, $double
真偽値: $bool
配列: $array

""")

}
