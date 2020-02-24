package main

func Values() {

	// 文字列
	var str string = "ゴー"
	// 数値
	var integer int = 6
	var i8 int8 = 6   // -128 ~ 127
	var i16 int16 = 6 // -32768 ~ 32767
	var i32 int32 = 6 // -2147483648 ~ 2147483647
	var i64 int64 = 6 // -9223372036854775808 ~ 9223372036854775807
	var unsigned uint = 6
	var u8 uint8 = 6   // 0 ~ 255
	var u16 uint16 = 6 // 0 ~ 65535
	var u32 uint32 = 6 // 0 ~ 4294967295
	var u64 uint64 = 6 // 0 ~ 18446744073709551615
	/*
		他の進数の表記
		oct: 0475
		hex: 0xabcdef (大文字•小文字を問わない)
	*/
	var flt32 float32 = .0375e-6
	var flt64 float64 = .0375e-6
	var com64 complex64 = 3+1i
	var com128 complex128 = 3+1i
	// 真偽値
	var boolean bool = true
	// 配列
	var arr = []float64{2.4,3.6,4.8}
	// マップ
	var dict = map[bool]string{
		true:"Yes, let's",
		false:"No, let's not", // 最終行であっても,末尾にカンマがいる
	}
	// 関数
	var square=func(val float64) float64 {
		return val*val
	}

	print(
		clean{},ln{1},
		`
			色々な値を試します

			文字列: `,str,`
			   大きさ: `,len(str),`
			整数:
			   int:   `,integer,square(float64(integer)) /* = int32/int64 */,`
			   int8:  `,i8,`
			   int16: `,i16,`
			   int32: `,i32,`
			   int64: `,i64,`
			符号なし整数:
			   uint:   `,unsigned /* = uint32/uint64 */,`
			   uint8:  `,u8,`
			   uint16: `,u16,`
			   uint32: `,u32,`
			   uint64: `,u64,`
			浮動小数:
			   float32: `,flt32,`
			   float64: `,flt64,`
			複素数:
			   complex64: `,com64,`
			   complex128: `,com128,`
			真偽値: `,boolean,`
			配列: `,arr,`
			   大きさ: `,len(arr),`
			マップ: `,dict,`
			   大きさ: `,len(dict),`
			クロージャ:
			   `,square,`
		`,
	)

	print(ln{3})

}

// func ***() {} の型の関数は,関数外でのみ宣言可能
func cube(val float64) float64 {
	return val*val*val
}

/*
	変数宣言 : var x
	定数宣言 : const a
*/