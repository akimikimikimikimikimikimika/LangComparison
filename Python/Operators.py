#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

print("\r\nこれから演算子を試します\r\n")

print("\r\n算術演算子")
print(f"24  + 5 = {   24 +5   }")
print(f"24  - 5 = {   24 -5   }")
print(f"24  * 5 = {   24 *5   }")
print(f"24  / 5 = {   24 /5   }")
print(f"24 // 5 = {   24//5   }") # 商を整数にする除算 (割り切る)
print(f"24  % 5 = {   24 %5   }")
print(f"24 ** 5 = {   24**5   }") # = pow(24,5)

    # divmod(24,5) で (24//5,24%5) が返される (商,余り)

print("\r\n比較演算子")
print(f"24  > 5 = {   24 >5   }")
print(f"24 >= 5 = {   24>=5   }")
print(f"24  < 5 = {   24 <5   }")
print(f"24 <= 5 = {   24<=5   }")
print(f"24 == 5 = {   24==5   }") # Equal
print(f"24 != 5 = {   24!=5   }") # Not equal

print("\r\n論理演算子")
print(f"True and False = {   True and False   }")
print(f"True  or False = {   True  or False   }")
print(f"     not False = {        not False   }")

print("\r\n一致するか確認")
a="Object"
print(f"a   is   a = {   a   is   a   }")
print(f"a is not a = {   a is not a   }")
# タプル,数値,真偽値,文字列は内容で判定するみたいだが,それ以外は同一物でないと一致していると見なさない

print("\r\n文字列演算子")
print(f"\"“Python” has %d letters\" % 6 = \"{   '“Python” has %d letters' % 6   }\"")

print("\r\nシーケンス型演算子")
print("\r\nstr, byte の例")
print(f"\"abc\" + \"def\"         = \"{ 'abc' + 'def'         }\"")
print(f"\"abc\" * 3             = \"{   'abc' * 3             }\"")
print(f"3 * \"def\"             = \"{   3 * 'def'             }\"")
print(f"\"r\"     in \"string\"   = {   'r'     in 'string'   }")
print(f"\"q\" not in \"string\"   = {   'q' not in 'string'   }")
print(f"len(\"string\")         = {     len('string')         }")
print(f"\"string\"[0]           = \"{   'string'[0]           }\"")
print(f"\"string\"[1:3]         = \"{   'string'[1:3]         }\"") # pick 1≦x<3
print(f"\"string\"[1:6:2]       = \"{   'string'[1:6:2]       }\"") # pick 1≦x<6 by 2
print(f"\"abbreviation\".index(\"b\") = {   'abbreviation'.index('b')   }")
print(f"\"abbreviation\".count(\"b\") = {   'abbreviation'.count('b')   }")
print("\r\nlist, tuple の例")
print(f"[1,2,3] + [4,5,6]      = {   [1,2,3] + [4,5,6]        }")
print(f"[4,5,6] * 3            = {   [4,5,6] * 3              }")
print(f"len([4,5,6])           = {   len([4,5,6])             }")
print(f"3     in [1,2,3,4,5,6] = {   3     in [1,2,3,4,5,6]   }")
print(f"8 not in [1,2,3,4,5,6] = {   8 not in [1,2,3,4,5,6]   }")
print(f"[1,2,3,4,5,6][0]       = {   [1,2,3,4,5,6][0]         }")
print(f"[1,2,3,4,5,6][2:6]     = {   [1,2,3,4,5,6][2:6]       }") # pick 1≦x<3
print(f"[1,2,3,4,5,6][0:6:2]   = {   [1,2,3,4,5,6][0:6:2]     }") # pick 1≦x<6 by 2
print(f"max([4,3,6,2,1,5])     = {   max([4,3,6,2,1,5])       }")
print(f"min([4,3,6,2,1,5])     = {   min([4,3,6,2,1,5])       }")
print(f"[6,3,6,2,6,2].count(6) = {   [6,3,6,2,6,2].count(6)   }")

print("\r\n")
