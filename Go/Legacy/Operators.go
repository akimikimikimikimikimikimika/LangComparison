package main

func Operators() {

	print(clean{},`

		これから演算子を試します

		算術演算子
		24  +5 = `,24  +5,`
		24  -5 = `,24  -5,`
		24  *5 = `,24  *5,`
		24.0/5 = `,24.0/5,`
		24  %5 = `,24  %5,`

		比較演算子
		24 <  5 = `,24 <  5,`
		24 <= 5 = `,24 <= 5,`
		24 >  5 = `,24 >  5,`
		24 >= 5 = `,24 >= 5,`
		24 == 5 = `,24 == 5,`
		24 != 5 = `,24 != 5,`

		論理演算子
		true && false = `,true && false,`
		true || false = `,true || false,`
			! false = `,      ! false,`

		文字列連結
		"abc" + "def" = `,"abc" + "def",`

		文字列比較演算子
		"abc" <  "def" = `,"abc" <  "def",`
		"abc" <= "def" = `,"abc" <= "def",`
		"abc" >  "def" = `,"abc" >  "def",`
		"abc" >= "def" = `,"abc" >= "def",`
		"abc" == "def" = `,"abc" == "def",`
		"abc" != "def" = `,"abc" != "def",`

	`);

	print(ln{3})

}