#! /usr/bin/swift

import Foundation

print("""

これから文字列フォーマットを試します

整数
String(format:"%u",255) = "\(   String(format:"%u",255)   )" // 符号なし整数
String(format:"%d",255) = "\(   String(format:"%d",255)   )" // DEC
String(format:"%o",255) = "\(   String(format:"%o",255)   )" // OCT
String(format:"%x",255) = "\(   String(format:"%x",255)   )" // HEX
String(format:"%X",255) = "\(   String(format:"%X",255)   )" // HEX

実数
String(format:"%d",0.018) = "\(   String(format:"%d",0.018)   )" // 整数化
String(format:"%f",0.018) = "\(   String(format:"%f",0.018)   )"
String(format:"%g",0.018) = "\(   String(format:"%g",0.018)   )"
String(format:"%e",0.018) = "\(   String(format:"%e",0.018)   )"
String(format:"%E",0.018) = "\(   String(format:"%E",0.018)   )"

文字
String(format:"%c",115)   = "\(     String(format:"%c",115)     )"
String(format:"%@","abc") = "\(   String(format:"%@","abc")   )"

ポインタ
String(format:"%p","Object") = "\(   String(format:"%p","Object")   )"

基数の表記
String(format:"%#o",255) = "\(   String(format:"%#o",255)   )"
String(format:"%#x",255) = "\(   String(format:"%#x",255)   )"
String(format:"%#X",255) = "\(   String(format:"%#X",255)   )"

正負の表記
String(format: "%d",+18) = "\(   String(format: "%d",+18)   )"
String(format:"%+d",+18) = "\(   String(format:"%+d",+18)   )"
String(format:"% d",+18) = "\(   String(format:"% d",+18)   )"
String(format: "%d",-18) = "\(   String(format: "%d",-18)   )"
String(format:"%+d",-18) = "\(   String(format:"%+d",-18)   )"
String(format:"% d",-18) = "\(   String(format:"% d",-18)   )"

精度
String(format:"%.3d",18)    = "\(     String(format:"%.3d",18)      )" // u,d,b,o,x: 整数桁数
String(format:"%.3f",0.018) = "\(     String(format:"%.3f",0.018)   )" // f: 小数点以下の桁数
String(format:"%.3e",0.018) = "\(     String(format:"%.3e",0.018)   )" // e,g: 有効桁数-1

幅
String(format:"%10d",18)     = "\(     String(format:"%10d",18)      )"
String(format:"%10f",0.018)  = "\(     String(format:"%10f",0.018)   )"
String(format:"%10e",0.018)  = "\(     String(format:"%10e",0.018)   )"

0埋め
String(format:"%010d",18)    = "\(     String(format:"%010d",18)      )"
String(format:"%010f",0.018) = "\(     String(format:"%010f",0.018)   )"
String(format:"%010e",0.018) = "\(     String(format:"%010e",0.018)   )"

左寄せ
String(format: "%10d",18) = "\(   String(format:"%10d",18)    )"
String(format:"%-10d",18) = "\(   String(format:"%-10d",18)   )"

組合せ
String(format:"%d年%d月%d日",2007,7,14) = "\(   String(format:"%d年%d月%d日",2007,7,14)   )"
String(format:"x = %+08.2f",0.375)      = "\(   String(format:"x = %+08.2f",0.375)      )"

引数並び
String(format:"%3$d年%1$d月%2$d日",7,14,2007) = "\(   String(format:"%3$d年%1$d月%2$d日",7,14,2007)   )"
String(format:"%2$@は%2$@。%1$@は%1$@。","あれ","これ") = "\(   String(format:"%2$@は%2$@。%1$@は%1$@。","あれ","これ")   )"

""")
/*
	他の言語と違い,SwiftのフォーマットはC言語に即すので,文字列を埋め込むのに %s を使えない。 %s は 8bit unsigned integer で使うみたいだが,うまく機能しないし,ましてや String型 は使えない。これとは別に Objective-C のオブジェクトをテキストで説明する指定子 %@ があるので,こちらを使用すれば,何ら問題なく動作する。
*/

print("\r\n")