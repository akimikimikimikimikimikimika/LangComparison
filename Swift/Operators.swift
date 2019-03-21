#! /usr/bin/swift

print("""

これから演算子を試します

算術演算子
24 + 5 = \(   24 + 5   )
24 - 5 = \(   24 - 5   )
24 * 5 = \(   24 * 5   )
24 / 5 = \(   24 / 5   )
24 % 5 = \(   24 % 5   )

比較演算子
24  > 5 = \(   24  > 5   )
24 >= 5 = \(   24 >= 5   )
24  < 5 = \(   24  < 5   )
24 <= 5 = \(   24 <= 5   )
24 == 5 = \(   24 == 5   )
24 != 5 = \(   24 != 5   )

論理演算子
true && false = \(   true && false   )
true || false = \(   true || false   )
       !false = \(          !false   )

三項演算子
 true ? "yes" : "no" = "\(    true ? "yes" : "no"   )"
false ? "yes" : "no" = "\(   false ? "yes" : "no"   )"

文字列演算子
"abc" + "def" = "\(   "abc" + "def"   )"
""")

print("\r\n")