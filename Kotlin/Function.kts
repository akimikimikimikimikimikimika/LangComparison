// 関数定義
fun message(): Unit {
	println("何も返しません")
}
// 何も値を返さない場合は Unit を返すことにする

// 関数定義1 (引数•戻り値のある例)
fun pro1(x:Double, y:Double, z:Double):Double {
	return x*y*z
}

val p1=pro1(4.0,6.0,3.0)
val p2=pro1(x=4.0,y=6.0,z=3.0) // 引数名を指定して当てはめることもできる

// 関数定義2 (yに初期値が定められている)
fun pro2(x:Double, y:Double=1.0, z:Double):Double {
	return x*y*z
}

val p3=pro2(z=8.0,x=9.0) // 初期値のある変数は省略できる

// 関数定義2 (ワンライン)
fun pro3(x:Double,y:Double,z:Double):Double = x*y*z
fun pro4(x:Double,y:Double,z:Double) = x*y*z
	// 戻す値の型が自明の場合は省略できる

val p4=pro3(4.0,6.0,3.0)

println(p1)
println(p2)
println(p3)
println(p4)

println("\r\n")