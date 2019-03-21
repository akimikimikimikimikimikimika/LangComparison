#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

print(f"""

これから演算子を試します

算術演算子
24  + 5 = {   24 +5   }
24  - 5 = {   24 -5   }
24  * 5 = {   24 *5   }
24  / 5 = {   24 /5   }
24 // 5 = {   24//5   } (商を整数にする除算)
24  % 5 = {   24 %5   }
24 ** 5 = {   24**5   }

divmod(24,5) = {   divmod(24,5)   } = (24//5,24%5) (商,余り)

比較演算子
24  > 5 = {   24 >5   }
24 >= 5 = {   24>=5   }
24  < 5 = {   24 <5   }
24 <= 5 = {   24<=5   }
24 == 5 = {   24==5   }
24 != 5 = {   24!=5   }

論理演算子
True and False = {   True and False   }
True  or False = {   True  or False   }
     not False = {        not False   }

""")

a="Object"
print(f"""
一致するか確認
a   is   a = {   a   is   a   }
a is not a = {   a is not a   }
""")
# タプル,数値,真偽値,文字列は内容で判定するみたいだが,それ以外は同一物でないと一致していると見なさない

print(f"""

文字列演算子
"“Python” has %d letters" % 6 = "{   "“Python” has %d letters" % 6   }"

シーケンス型演算子

* str, byte の例
"abc" + "def"             = "{   "abc" + "def"               }"
"abc" * 3                 = "{   "abc" * 3                   }"
3 * "def"                 = "{   3 * "def"                   }"
"r"     in "string"       =  {   "r"     in "string"         }
"q" not in "string"       =  {   "q" not in "string"         }
len("string")             =  {   len("string")               }
"string"[0]               = "{   "string"[0]                 }"
"string"[1:3]             = "{   "string"[1:3]               }" (pick 1≦x<3)
"string"[1:6:2]           = "{   "string"[1:6:2]             }" (pick 1≦x<6 by 2)
"abbreviation".index("b") =  {   "abbreviation".index("b")   }
"abbreviation".count("b") =  {   "abbreviation".count("b")   }

* list, tuple の例
[1,2,3] + [4,5,6]      = {   [1,2,3] + [4,5,6]        }
[4,5,6] * 3            = {   [4,5,6] * 3              }
len([4,5,6])           = {   len([4,5,6])             }
3     in [1,2,3,4,5,6] = {   3     in [1,2,3,4,5,6]   }
8 not in [1,2,3,4,5,6] = {   8 not in [1,2,3,4,5,6]   }
[1,2,3,4,5,6][0]       = {   [1,2,3,4,5,6][0]         }
[1,2,3,4,5,6][2:6]     = {   [1,2,3,4,5,6][2:6]       } (pick 1≦x<3)
[1,2,3,4,5,6][0:6:2]   = {   [1,2,3,4,5,6][0:6:2]     } (pick 1≦x<6 by 2)
[6,3,6,2,6,2].count(6) = {   [6,3,6,2,6,2].count(6)   }

""")

print("\r\n")
