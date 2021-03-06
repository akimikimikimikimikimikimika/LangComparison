#! /usr/bin/env php
<?php

require_once("Utility.php");

function Operators() {
	global $i;

	println(<<<"Operators"

		これから演算子を試します

		算術演算子
		24  + 5 = {$i(   24  + 5   )}
		24  - 5 = {$i(   24  - 5   )}
		24  * 5 = {$i(   24  * 5   )}
		24  / 5 = {$i(   24  / 5   )}
		24  % 5 = {$i(   24  % 5   )}
		24 ** 5 = {$i(   24 ** 5   )}

		数値比較演算子
		24 >  5 = {$i(   24 >  5   )}
		24 >= 5 = {$i(   24 >= 5   )}
		24 <  5 = {$i(   24 <  5   )}
		24 <= 5 = {$i(   24 <= 5   )}
		24 == 5 = {$i(   24 == 5   )}
		24 != 5 = {$i(   24 != 5   )}
		24 <> 5 = {$i(   24 <> 5   )} (Not equal)
		24<=> 5 = {$i(   24<=> 5   )}
		24<=>24 = {$i(   24<=>24   )}
		24<=> 5 = {$i(    5<=>24   )}

		論理演算子
		true and false = {$i(   true and false   )}
		true  && false = {$i(   true  && false   )}
		true  or false = {$i(   true  or false   )}
		true  || false = {$i(   true  || false   )}
		true xor false = {$i(   true xor false   )}
		       ! false = {$i(          ! false   )}

		ビット演算子 (2進数での各桁毎の論理演算)
		0b1010 & 0b1001 = 0b{$i(sprintf("%04b",   bindec("1010") & bindec("1001")   ))} (AND)
		0b1010 | 0b1001 = 0b{$i(sprintf("%04b",   bindec("1010") | bindec("1001")   ))} (OR)
		0b1010 ^ 0b1001 = 0b{$i(sprintf("%04b",   bindec("1010") ^ bindec("1001")   ))} (XOR)
		       ~ 0b1001 = 0b{$i(sprintf("%04b",(                 ~ bindec("1001")   )+16))} (NOT)

		0b00111111 << 2 = 0b{$i(sprintf("%08b",   bindec("00111111") << 2   ))} (2桁左シフト)
		0b00111111 >> 2 = 0b{$i(sprintf("%08b",   bindec("00111111") >> 2   ))} (2桁右シフト)

		三項演算子
		 true ? "yes" : "no" = "{$i(    true ? "yes" : "no"   )}"
		false ? "yes" : "no" = "{$i(   false ? "yes" : "no"   )}"

		文字列演算子
		"abc" . "def" = "{$i(   "abc" . "def"   )}"

		文字列比較演算子
		"abc"  == "def" = {$i(   "abc"  == "def"   )} (等しい)
		"abc"  != "def" = {$i(   "abc"  != "def"   )} (等しくない)
		"abc"  <  "def" = {$i(   "abc"  <  "def"   )} (辞書順で "abc" < "def")
		"abc"  <= "def" = {$i(   "abc"  <= "def"   )} (辞書順で "abc" ≦ "def")
		"abc"  >  "def" = {$i(   "abc"  >  "def"   )} (辞書順で "abc" > "def")
		"abc"  >= "def" = {$i(   "abc"  >= "def"   )} (辞書順で "abc" ≧ "def")
		"abc" <=> "def" = {$i(   "abc" <=> "def"   )} (辞書順で "abc"<=>"def" を演算)

		配列演算子
		[1,2,3] == [1,2,3]  = {$i(   [1,2,3] == [1,2,3]   )}
		[1,2] <=> [1,2,3]   = {$i(   [1,2] <=> [1,2,3]    )}

		厳密な等号 (型の違いも判定)
		3  == "3" = {$i(   3  == "3"   )} (寛容な等号)
		3 === "3" = {$i(   3 === "3"   )} (厳格な等号)
		3 !== "3" = {$i(   3 !== "3"   )} (厳格な不等号)

	Operators);

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
		複合代入演算子 : += -= *= /= %= **= &= |= ^= <<= >>= .=
			a += b は a= a + b と同義。その他も同様
		加算子/減算子: ++ --
			a++ と ++a は同じ意味
			e.g.
				a=5
				b=a++
				→ aは,1増加して 6 に変化し,bには加算前の 5 が代入される
	*/

	pnl(2);

}

if (running_directly(__FILE__)) Operators();

?>