#! /usr/bin/env node

let d2b = (len,dec)=>{
	var bin = dec.toString(2);
	let p = Math.max(len,bin.length)-bin.length;
	for (var n=0;n<p;n++) bin="0"+bin;
	bin="0b"+bin;
	return bin;
};
let d2x = (len,dec)=>{
	if (dec<0) dec=dec+0xffffffff+1;
	var hex = dec.toString(16);
	let p = Math.max(len,hex.length)-hex.length;
	for (var n=0;n<p;n++) hex="0"+hex;
	hex="0x"+hex;
	return hex;
};

let obj = {};

console.log(`

これから演算子を試します

算術演算子
24  + 5 = ${   24  + 5   }
24  - 5 = ${   24  - 5   }
24  * 5 = ${   24  * 5   }
24  / 5 = ${   24  / 5   }
24  % 5 = ${   24  % 5   }
24 ** 5 = ${   24 ** 5   }

比較演算子
24 >  5 = ${   24 >  5   }
24 >= 5 = ${   24 >= 5   }
24 <  5 = ${   24 <  5   }
24 <= 5 = ${   24 <= 5   }
24 == 5 = ${   24 == 5   }
24 != 5 = ${   24 != 5   }

論理演算子
true && false = ${   true && false   }
true || false = ${   true || false   }
      ! false = ${         ! false   }

ビット演算子 (2進数での各桁毎の論理演算)
0b1010 & 0b1001 = 0b${d2b(4,   0b1010 & 0b1001   )} (AND)
0b1010 | 0b1001 = 0b${d2b(4,   0b1010 | 0b1001   )} (OR)
0b1010 ^ 0b1001 = 0b${d2b(4,   0b1010 ^ 0b1001   )} (XOR)
       ~ 0b1001 = 0b${d2b(4,          ~ 0b1001   +16)} (NOT)

0b00111111  << 2 = 0b${d2b(8,   0b00111111  << 2   )} (2桁左シフト)
0b00111111  >> 2 = 0b${d2b(8,   0b00111111  >> 2   )} (2桁右シフト)
0b00111111 >>> 2 = 0b${d2b(8,   0b00111111 >>> 2   )} (2桁右シフト)

0x96971bed  >> 12 = 0x${d2x(8,   0x96971bed  >> 12   )} (3桁右シフト)
0x96971bed >>> 12 = 0x${d2x(8,   0x96971bed >>> 12   )} (3桁右シフト)

一致するか確認
obj == obj = ${   obj == obj   }
obj != obj = ${   obj != obj   }

値の種類を確認
typeof "text"   = ${   typeof "text"     }
typeof 3.14     = ${   typeof 3.14       }
typeof false    = ${   typeof false      }
typeof Symbol() = ${   typeof Symbol()   }
typeof {}       = ${   typeof {}         }

3  == "3" = ${   3  == "3"   }
3 === "3" = ${   3 === "3"   /* 厳密な型判定 */}
3 !== "3" = ${   3 !== "3"   /* 厳密な型判定の否定版 */}

文字列演算子
"abc"  + "def" = "${   "abc"  + "def"   }"
"abc" == "def" = ${   "abc" == "def"   }

文字列比較演算子
"abc" == "def" = ${   "abc" == "def"   } (等しい)
"abc" != "def" = ${   "abc" != "def"   } (等しくない)
"abc" <  "def" = ${   "abc" <  "def"   } (辞書順で "abc" < "def")
"abc" <= "def" = ${   "abc" <= "def"   } (辞書順で "abc" ≦ "def")
"abc" >  "def" = ${   "abc" >  "def"   } (辞書順で "abc" > "def")
"abc" >= "def" = ${   "abc" >= "def"   } (辞書順で "abc" ≧ "def")

`);
/*
	JavaScriptでは,型の概念が曖昧なので, (数値)+(数値) でない限り, + は基本的に文字列結合と解釈される。
	+ 以外の演算子では,数値型に変換して,数値として解釈しようとする。
	e.g.
		"5" + 3 → "53"
		"5" - 3 → 2
		true + "ly" → "truely"
		true / 10 → 0.1
		6 - "ly" → NaN
		"List type : " + ["a","b","c"] → "List type : a,b,c"
	だが,一部の数値とも解釈されうる値と数値同士の演算では,数値として機能したりする
	e.g.
		true + 6 → 7
		new Date() - 0 → (Unixエポックでの現在時刻)
*/
/*
	16進数の1桁 = 2進数の4桁
	バイナリ演算は, 32ビット (0x00000000 ~ 0xffffffff) で行うものだが,
	-x ≔ ~x + 1 の関係がある。つまり,ある数の負数とは,ある数を(32ビットの範囲で)ビット反転させ,1加えた数と同等に32ビットで表すことにしている。因みに,
		~x のことを,xの 1の補数 といい,
		-x のことを,xの 2の補数 という。
	本来, >> は符号を変化させずに右シフトする, >>> は強制的に0埋め右シフトする,というものであったが,それは結果的に, >> は32ビット最上位の桁で埋めながら右シフトという意味にも捉えられる。
*/
/*
	ビット演算において,演算の内容を分かりやすくするため,意図的に本来の値から改変させたところがある
	• AND,OR,XOR,NOT においては,0埋めにより演算後も4桁が維持されるようにした (本来はない桁があったりする)
	• NOT を通常通りに計算すると,これまでなかった桁も0と見做してビット反転するため,膨大な数になる。それを防止するため,5桁目以降を切り捨てる処理をした (右端の+16)
*/
/*
	その他に...
	複合代入演算子 : += -= *= /= %= **= &= |= ^= <<= >>= >>>= &&= ||=
		a += b は a = a + b と同義。その他も同様
	加算子/減算子: ++ --
		e.g.
			a=5
			b=a++
			a=5
			c=++a
			→ aは,1増加して 6 に変化し,bには加算前の 5 が代入され,cには加算後の 6 が代入される
*/