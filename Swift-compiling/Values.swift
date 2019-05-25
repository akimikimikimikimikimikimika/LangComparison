
import Foundation
// CGFloat,NSString,NSMutableString,NSNumber,NSArray,NSMutableArray 用

func Values() {

	// 文字列
	let string:String = "スウィフト"
	let string2:NSString = "スウィフト"
	let string3:NSMutableString = "スウィフト"
	let lines = """

	First line
	Second line
	Third line

	""";
	/*
		変数展開/式展開の仕方
		"The values is \(val*2)"
	*/
	// こんな変わった変数名が使えるのもSwiftの醍醐味
	let 😆：喜びの表現 = "すうぃふと"
		/*
			ヒアドキュメントは,全体にインデントがある場合,インデントが無視される。つまり
					let lines="""
					First item
						Subitem
					Second item
					"""
			let lines="""
			First item
				Subitem
			Second item
			"""
			これら2つは全く同じである
		*/
		/*
			変数展開/式展開の仕方
			"The value is \(val*2)"
		*/

	// バイト
	let data:Data = "Swift byte data".data(using: .utf8)!
		/*
			SwiftでのStringとDataの相互変換
			String → Data
				data:Data?  = str.data(using: .utf8)
				str.data はstrをNSStringに暗黙のうちに変換している
				UTF-8のデータに変換できない場合はnilになる
			Data → String
				str:String? = String(data: data)
				エンコードがUTF-8でないデータや,バイナリデータを変換させようとした場合など,Stringに変換不能な場合はnilになる
		*/

	// 数値
	let number:NSNumber = 6 // NSNumberは整数,浮動小数,真偽値全て含む
	let integer:Int = 6
	let int8:Int8 = 6
	let int16:Int16 = 6
	let int32:Int32 = 6
	let int64:Int64 = 6
	let unsignedInteger:UInt = 6 // 0以上の整数
	let uint8:UInt8 = 6
	let uint16:UInt16 = 6
	let uint32:UInt32 = 6
	let uint64:UInt64 = 6
	let float:Float = 0.0375e-6
	let double:Double = 0.0375e-6
	let cgfloat:CGFloat = 0.0375e-6
		/*
			CGFloat
			32bitにおいてはFloat
			64bitにおいてはDouble
			として機能する。つまり,浮動小数の定義域がこれと同じ。
			Core Graphics用のスカラ値として存在する。勿論,これに限らないのだが。
		*/

	// 真偽値
	let boolean:Bool = true
	// ヌル値
	let null:Any? = nil
		/*
			Swiftの型宣言
			e.g.
			let str:String? とすれば,strには,String型の値か,nilが含まれることを宣言する (Optional型)
			Optional型である場合,下記のように?を付けてメンバーにアクセスする。
				str?.append("Text")
				→ String? (strがStringなら,str+"Text"を返し,strがnilならnilを返す)
			Optionalを外す方法
				* str! → String
					(strが絶対Stringである場合に使える。strがnilならエラーになる)
				* str ?? "Default" → String
					(strがStringなら,strをそのまま返し,strがnilなら"Default"を返し,結局Stringになる)

		*/

	// タプル
	let tuple:(Int,String,Int,Double,Bool) = (1, "second", 3, 3.14, false)

	// 配列
	let array1:[String] = ["First","Second","Third"]
	let array2:Array<Double> = [2.4,3.6,4.8]
	let array3:NSArray = [1, "second", 3, 3.14, false]
	let array4:NSMutableArray = [1, "second", 3, 3.14, false]
		/*
			Swiftの配列にはArray,NSArray,NSMutableArrayがある。

			* Array
				Swift固有のオブジェクトで,代入や関数の引数として渡す際に配列はコピーされる (値渡し)
				var宣言すれば中身を書き換えられるが,letやconst宣言をすると書き換えできない
				Array<T> [T] などと配列内のデータの型を指定する(Tが型)

			* NSArray
				Objective-Cの基幹オブジェクトのNSObjectの子クラスで,代入や関数の引数として渡す際は,配列そのものが渡される (参照渡し)
				Array<AnyObject> に相当し,配列内のデータの型情報を保持しない
			* NSMutableArray
				NSArrayの子クラスで,参照渡しであることに加え,配列の中身を書き換えられる

			これら3者はasで型変換できる
			* intArray as NSArray
			* nsarray as [AnyObject]
			* nsarray as! [Int]   ←   [AnyObject] を [Int] とするには,強制キャスト(型変換)する
			* nsarray as? [Int]   ←   キャスト失敗したらnilになり得る [Int]? 型
		*/

	// 集合
	let set2:Set<Double> = [2.4,3.6,4.8]
	let set3:NSSet = [1, "second", 3, 3.14, false]
	let set4:NSMutableSet = [1, "second", 3, 3.14, false]
		/*
			集合は 値の順序を問わない,値の重複を許さないデータ集合体
			Array同様にasで型変換できる
			NSSet は Set<AnyObject> に相当する
		*/

	// 辞書
	let dict1:[String:Int] = ["first":1,"second":2,"third":3]
	let dict2:Dictionary<Bool,String> = [true:"Yes, it is.",false:"No, it isn't."]
	let dict3:NSDictionary = ["first":1, 2:"second", "third":3, 2.71:3.14, true:false]
	let dict4:NSMutableDictionary = ["first":1, 2:"second", "third":3, 2.71:3.14, true:false]
		/*
			辞書は key/value のペアでデータを管理できるもの
			他の言語と違い,keyは必ずしもStringである必要はない
			Array同様にasで型変換できる
			NSDictionary は [NSObject:AnyObject] に相当する
		*/

	// 範囲
	let ranI = 5...8; // 5≦x≦8
	let ranE = 5..<8; // 5≦x<8
	let ranF = 5... ; // 5≦x
	let ranT =  ...8; //   x≦8
	let ranU =  ..<8; //   x<8

	// 関数
	func cube(v val: Int) -> Int {
		return val*val*val
		// pow(val,3) は valがDoubleで,返値もDoubleでないといけない
	}

	// クロージャ (無名関数)
	let function={ (_ val: Int) -> Int in
		return val*val
	};
		/*
			(v val: Int) とすることで,関数を呼び出す側は, cube(v:6) のようにして呼び出せる
			(_ val: Int) とすることで, function(6) のようにして呼び出せる
			(val: Int=6) とすることで,呼び出す側がvalを指定しなかった場合の初期値を定められる
		*/
		/*
			上のクロージャは次のように簡略化できる
			let function={ (val: Int) -> Int in return val*val }
			let function={ (val: Int) -> Int in val*val }
			let function={ (val: Int) in val*val }

			let function:(Int,Int) -> Int と予め宣言しておけば...
			function={ (val) in val*val }
			function={ $0*$0 }
		*/

	print("""

色々な値を試します

文字列: \(string)
文字列2: \(string2)
文字列3: \(string3)
文字列4:
\(lines)
文字列5: \(😆：喜びの表現)
バイト: \(data)
数値:
   NSNumber: \(number)
整数:
   Int:    \(integer),\(function(integer)),\(cube(v:integer))
   Int8:   \(int8)
   Int16:  \(int16)
   Int32:  \(int32)
   Int64:  \(int64)
   UInt:   \(unsignedInteger)
   UInt8:  \(uint8)
   UInt16: \(uint16)
   UInt32: \(uint32)
   UInt64: \(uint64)
浮動小数:
   Float:   \(float)
   Double:  \(double)
   CGFloat: \(cgfloat)
真偽値: \(boolean)
値なし: \(String(describing:null))
配列:
\(array1)
\(array2)
\(array3)
\(array4)
集合:
\(set2)
\(set3)
\(set4)
辞書:
\(dict1)
\(dict2)
\(dict3)
\(dict4)
範囲:
   5≦x≦8 = \(ranI)
   5≦x<8 = \(ranE)
   5≦x   = \(ranF)
     x≦8 = \(ranT)
     x<8 = \(ranU)
関数:
\(String(describing: cube))
クロージャ (無名関数):
\(String(describing: function))
""")
	// String(describing:) を挟んで表記することで,そのまま表記した際に表示されるエラーを回避することができる

	print("\r\n")

}