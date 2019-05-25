
import Foundation

func Operators() {

	func b2d(_ bin:String) -> Int {
		return Int(bin, radix: 2)!
	}
	func d2b(_ len: Int,_ dec:Int) -> String {
		let v=String(dec, radix: 2)
		let p="0b"+String(repeating: "0", count: max(len,v.count)-v.count)
		return p+v
	}
	let obj = NSObject()

	print("""

これから演算子を試します

算術演算子
24 + 5 = \(   24 + 5   )
24 - 5 = \(   24 - 5   )
24 * 5 = \(   24 * 5   )
24 / 5 = \(   24 / 5   )
24 % 5 = \(   24 % 5   )

比較演算子
24 >  5 = \(   24 >  5   )
24 >= 5 = \(   24 >= 5   )
24 <  5 = \(   24 <  5   )
24 <= 5 = \(   24 <= 5   )
24 == 5 = \(   24 == 5   )
24 != 5 = \(   24 != 5   )

論理演算子
true && false = \(   true && false   )
true || false = \(   true || false   )
       !false = \(          !false   )

ビット演算子 (2進数での各桁毎の論理演算)
0b1010 & 0b1001 = \(d2b(4,   b2d("1010") & b2d("1001")   )) (AND)
0b1010 | 0b1001 = \(d2b(4,   b2d("1010") | b2d("1001")   )) (OR)
0b1010 ^ 0b1001 = \(d2b(4,   b2d("1010") ^ b2d("1001")   )) (XOR)
        ~0b1001 = \(d2b(4,(               ~b2d("1001")   )+16)) (NOT)

0b00111111 << 2 = \(d2b(8,   b2d("00111111") << 2   )) (2桁左シフト)
0b00111111 >> 2 = \(d2b(8,   b2d("00111111") >> 2   )) (2桁右シフト)

三項演算子
 true ? "yes" : "no" = "\(    true ? "yes" : "no"   )"
false ? "yes" : "no" = "\(   false ? "yes" : "no"   )"

同一物か確認する演算子
obj === obj = \(   obj === obj   )
obj !== obj = \(   obj !== obj   )

型確認演算子
[2.4,4.8,7.2] is [Double] = \(   [2.4,4.8,7.2] is [Double]    )

文字列演算子
"abc" + "def"  = "\(   "abc" + "def"    )"
"abc" == "abc" = \(   "abc" == "abc"   )

配列演算子
[1,2,3] + [4,5,6]  = \(   [1,2,3] + [4,5,6]    )

範囲包含確認演算子
2...6 ~= 5  = \(   2...6 ~= 5    )

""")

	/*
		XOR = eXclusive OR (排他的論理和)
		AND : 両方が 1(true) であれば, 1(true) になる
		XOR : 一方が 1(true) であれば, 1(true) になる
		OR : 一方/両方が 1(true) であれば, 1(true) になる
		NOT : 1(true) と 0(false) を逆転させる

		ビット演算において,演算の内容を分かりやすくするため,意図的に本来の値から改変させたところがある
		• AND,OR,XOR,NOT においては,0埋めにより演算後も4桁が維持されるようにした (本来はない桁があったりする)
		• ビットシフトにおいては,0埋めにより演算後も8桁が維持されるようにした
		• NOT を通常通りに計算すると,これまでなかった桁も0と見做してビット反転するため,膨大な数になる。それを防止するため,5桁目以降を切り捨てる処理をした (右端の+16)
	*/

	/*
		その他に...
		複合代入演算子 : += -= *= /= %= &= |= ^= <<= >>= &&= ||=
			a += b は a= a + b と同義。その他も同様
		オーバーロード対応演算子 : &+ &- &* &/ &% && &| &^ &<< &>>
			値の定義域は型により限られているため,その域を超えた演算をする際には上限と下限を接続して演算を行う
			e.g.
				let v:Int8 = 127
				v &+ 1 == -128
	*/

	/*
		Swiftの演算子は全て関数の定義により構築されているので,定義を逸した演算は全て受け付けない
		例えば, 3+6 という計算をするにあたって,Swiftに付属する以下のような関数が呼び出されている
			func +(lhs: Int, rhs: Int) -> Int {...}
		例えば, !x という計算をするにあたって,Swiftに付属する以下のような関数が呼び出されている
			prefix func !(operand: Bool) -> Bool {...}
		例えば, a+=b という計算をするにあたって,Swiftに付属する以下のような関数が呼び出されている
			func +=(inout lhs: Int, rhs: Int) {...}
		つまり,迂闊な以下のような演算はできない
			24 ** 5 (Int**Int は未定義)
			"3" == 3 (String==Int は未定義)
			(8 as Int) * (4 as Double) (Int*Double は未定義)
			[1,2,3] == [1,2,3]  ([Int]==[Int] は未定義)

		演算子のオーバーロード
		全ての演算子が関数により定義されていることから,逆に,演算子を自作することもできる。例えば...
			func **(lhs: Double, rhs: Double) -> Double {
				return pow(lhs, rhs)
			}
		とすれば, 24**5 も計算できる。
		また,全く新しい記号の演算子を構築することも可能
			infix operator × : MultiplicationPrecedence // a×bを定義
			infix operator ÷ : MultiplicationPrecedence // a÷bを定義
			prefix operator ++                          // ++aを定義
			postfix operator ++                         // a++を定義
		と記号を演算子として宣言し,
			func ÷(lhs: Double, rhs :Double) -> Double {
				return lhs/rhs
			}
		などと演算の具体的な内容を定義する
	*/

	print("\r\n")

}