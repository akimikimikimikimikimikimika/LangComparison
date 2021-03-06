#! /usr/bin/env python3
# -*- coding: utf-8 -*-

from Utility import *

def Operators():

	prints(f"""

		これから演算子を試します

		算術演算子
		24  + 5 = {   24  + 5   }
		24  - 5 = {   24  - 5   }
		24  * 5 = {   24  * 5   }
		24  / 5 = {   24  / 5   }
		24 // 5 = {   24 // 5   } (商を整数にする除算)
		24  % 5 = {   24  % 5   }
		24 ** 5 = {   24 ** 5   }

		divmod(24,5) = {   divmod(24,5)   } = (24//5,24%5) (商,余り)

		比較演算子
		24 >  5 = {   24 >  5   }
		24 >= 5 = {   24 >= 5   }
		24 <  5 = {   24 <  5   }
		24 <= 5 = {   24 <= 5   }
		24 == 5 = {   24 == 5   }
		24 != 5 = {   24 != 5   }

		論理演算子
		True and False = {   True and False   }
		True  or False = {   True  or False   }
		     not False = {        not False   }

		ビット演算子 (2進数での各桁毎の論理演算)
		0b1010 & 0b1001 = {"{:=#06b}".format(   0b1010 & 0b1001   )} (AND)
		0b1010 | 0b1001 = {"{:=#06b}".format(   0b1010 | 0b1001   )} (OR)
		0b1010 ^ 0b1001 = {"{:=#06b}".format(   0b1010 ^ 0b1001   )} (XOR)
		       ~ 0b1001 = {"{:=#06b}".format((         ~ 0b1001   )+16)} (NOT)

		0b00111111 << 2 = {"{:=#010b}".format(   0b111111 << 2       )} (2桁左シフト)
		0b00111111 >> 2 = {"{:=#010b}".format(   0b111111 >> 2       )} (2桁右シフト)

		三項演算子
		"yes" if True  else "no" = "{   "yes" if True  else "no"   }"
		"yes" if False else "no" = "{   "yes" if False else "no"   }"

	""")

	obj=[1,2,3]
	prints(f"""
		一致するか確認
		obj   is   obj = {   obj   is   obj   }
		obj is not obj = {   obj is not obj   }
	""")
	# タプル,数値,真偽値,文字列は内容で判定するみたいだが,それ以外は同一物でないと一致していると見なさない

	prints(f"""

		文字列演算子 (str, byte)
		"abc" + "def"             = "{   "abc" + "def"               }"
		"abc" * 3                 = "{   "abc" * 3                   }"
		"abc" == "abc"            = "{   "abc" == "abc"              }"
		"r"     in "string"       =  {   "r"     in "string"         }
		"q" not in "string"       =  {   "q" not in "string"         }
		"string"[0]               = "{   "string"[0]                 }"
		"string"[1:3]             = "{   "string"[1:3]               }" (pick 1≦x<3)
		"string"[2:]              = "{   "string"[2:]                }" (pick 2≦x)
		"string"[:3]              = "{   "string"[:3]                }" (pick   x<3)
		"string"[1:6:2]           = "{   "string"[1:6:2]             }" (pick 1≦x<6 by 2)
		"abbreviation".index("b") =  {   "abbreviation".index("b")   }
		"abbreviation".count("b") =  {   "abbreviation".count("b")   }
		"“Python” has %d letters" % 6 = "{   "“Python” has %d letters" % 6   }"

		配列演算子 (list, tuple)
		[1,2,3] + [4,5,6]      = {   [1,2,3] + [4,5,6]        }
		[4,5,6] * 3            = {   [4,5,6] * 3              }
		3     in [1,2,3,4,5,6] = {   3     in [1,2,3,4,5,6]   }
		8 not in [1,2,3,4,5,6] = {   8 not in [1,2,3,4,5,6]   }
		[1,2,3,4,5,6][0]       = {   [1,2,3,4,5,6][0]         }
		[1,2,3,4,5,6][2:5]     = {   [1,2,3,4,5,6][2:5]       } (pick 2≦x<5)
		[1,2,3,4,5,6][3:]      = {   [1,2,3,4,5,6][3:]        } (pick 3≦x)
		[1,2,3,4,5,6][:2]      = {   [1,2,3,4,5,6][:2]        } (pick   x<2)
		[1,2,3,4,5,6][0:6:2]   = {   [1,2,3,4,5,6][0:6:2]     } (pick 0≦x<6 by 2)
		[6,3,6,2,6,2].count(6) = {   [6,3,6,2,6,2].count(6)   }

	""")

	'''
		XOR = eXclusive OR (排他的論理和)
		AND : 両方が 1(true) であれば, 1(true) になる
		XOR : 一方が 1(true) であれば, 1(true) になる
		OR : 一方/両方が 1(true) であれば, 1(true) になる
		NOT : 1(true) と 0(false) を逆転させる

		ビット演算において,演算の内容を分かりやすくするため,意図的に本来の値から改変させたところがある
		• AND,OR,XOR,NOT においては,0埋めにより演算後も4桁が維持されるようにした (本来はない桁があったりする)
		• ビットシフトにおいては,0埋めにより演算後も8桁が維持されるようにした
		• NOT を通常通りに計算すると,これまでなかった桁も0と見做してビット反転するため,膨大な数になる。それを防止するため,5桁目以降を切り捨てる処理をした (右端の+16)
	'''

	'''
		その他に...
		複合代入演算子 : += -= *= /= //= %= **= &= |= ^= <<= >>=
			a += b は a= a + b と同義。その他も同様
	'''

	nl(2)

runningDirectly(__name__,Operators)