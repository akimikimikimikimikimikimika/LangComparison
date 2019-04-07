#! /usr/bin/swift

import Foundation

// コード中で as NSString と明記している場合は,NSStringのメソッドやプロパティにアクセスしていることを表すが,Stringと重複がない場合は,特に明記しなくても利用できる。重複する場合は,明記しなければならない。

var rmF="ええ すごいわ ええ";
rmF.removeFirst(3);

var rmL="ええ すごいわ ええ";
rmL.removeLast(3);

var rmS="ええ すごいわ ええ";
let rmsF=rmS.index(rmS.startIndex, offsetBy: 3)
let rmsT=rmS.index(rmS.endIndex, offsetBy: -3) // 後ろから数えて3文字目
rmS.removeSubrange(rmsF...rmsT)

var rsr="ええ すごいわ ええ";
let rsrF=rsr.index(rsr.startIndex, offsetBy: 3)
	// 先頭から3文字目を表す String.Index を生成
let rsrT=rsr.index(rsrF, offsetBy: 3)
	// そこから3文字目を表す String.Index を生成
rsr.replaceSubrange(rsrF..<rsrT, with:"おもしろい")

/*
	String.Index..<String.Index のような,String.Indexによる範囲指定でなければ,replaceSubrangeは使えない。決して,適当に 3..<6 のような Int..<Int とかの範囲指定ではできないのだ。
*/

print("""

これから文字列を試します

"Swift STRING demo" →
.uppercased   = "\(   ("Swift STRING demo" as NSString).uppercased    )"
.lowercased   = "\(   ("Swift STRING demo" as NSString).lowercased    )"
.capitalized  = "\(   ("Swift STRING demo" as NSString).capitalized   )"
.uppercased() = "\(   "Swift STRING demo".uppercased()   )"
.lowercased() = "\(   "Swift STRING demo".lowercased()   )"

"ええ すごいわ ええ" →
.removeFirst(3)        = "\(rmF)"
.removeLast(3)         = "\(rmL)"
.removeSubrange(3...6) = "\(rmS)"

.replacingCharacters(in: 3...5, with: "おもしろい") = "\(   ("ええ すごいわ ええ" as NSString).replacingCharacters(in: NSMakeRange(3,3), with: "おもしろい")   )"
.replaceSubrange(3..<6, with:"おもしろい") = "\(rsr)"

"abracadabra" →
.contains("a")  = \(   "abracadabra".contains("a")    )
.hasPrefix("a") = \(   "abracadabra".hasPrefix("a")    )
.hasSuffix("a") = \(   "abracadabra".hasSuffix("a")    )

"string".substring(from: 2)     = "\(   ("string" as NSString).substring(from: 2)   )"
"string".substring(to: 3)       = "\(   ("string" as NSString).substring(to: 3)   )"
"string".substring(with: 1..<3) = "\(   ("string" as NSString).substring(with: NSMakeRange(1,2))   )"

""")
/*
	⚠︎ 注意
	1...2 ≠ NSMakeRange(1,2) - 前者の型は ClosedRange<Int> で,後者の型は NSRange である
	あくまで視認性のためにわかりやすく記しただけに過ぎない。
	as NSRange のような暗黙の型変換は不可能である
	NSMakeRange(始点,長さ)
*/

print("\r\n")