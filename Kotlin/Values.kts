
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

// 範囲
val ran = 5..8

// 範囲
val ranI = 5..8 // 5≦x≦8
val ranE = 5 until 8 // 5≦x<8
val ranD = 8 downTo 5 // 8≧x≧5
val ranS = 5..15 step 2 // 5≦x≦15 by 2
	// step は .. until downTo のいずれにでも付けられる
	// Kotlinの範囲指定は整数でなければならない

// 配列
val array:Array<Int> = arrayOf(3,1,4)
	/*
		Array を使用する場合は,Arrayの含む型を宣言しなければならない。
		任意の型の値が入る場合は, Array<Any> を用いる。
		[a,b,c...] という配列宣言はできないみたい。
	*/

// リスト
val list:List<Int> = listOf(3,1,4)

// マップ
val map:Map<String, Int> = mapOf("three" to 3,"one" to 1,"four" to 4)
	// Map<KeyType, ValueType>
	// mapOf(key to value)

// 集合
val set:Set<Int> = setOf(3,1,4)

println("""

色々な値を試します

文字列1: $string
   長さ: ${string.length}
文字列2:
$lines
文字: $char
数値:
   整数: $byte, $short, $int, $long
   浮動小数: $float, $double
真偽値: $bool
範囲:
   $ranI
   $ranE
   $ranD
   $ranS
配列: $array
  大きさ: ${array.size}
リスト: $list
マップ: $map
集合: $set

""")
/*
	val 変数名 : 定数として宣言
	var 変数名 : 変数として宣言
*/

println("\r\n")