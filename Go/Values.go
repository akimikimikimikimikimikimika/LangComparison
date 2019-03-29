package main

import "fmt"

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

	fmt.Println("\r\n色々な値を試します")
	fmt.Println("文字列: ",str)
	fmt.Println("   大きさ: ",len(str))
	fmt.Println("整数:")
	fmt.Println("   int:   ",integer,square(float64(integer))) // = int32/int64
	fmt.Println("   int8:  ",i8)
	fmt.Println("   int16: ",i16)
	fmt.Println("   int32: ",i32)
	fmt.Println("   int64: ",i64)
	fmt.Println("符号なし整数:")
	fmt.Println("   uint:   ",unsigned) // = uint32/uint64
	fmt.Println("   uint8:  ",u8)
	fmt.Println("   uint16: ",u16)
	fmt.Println("   uint32: ",u32)
	fmt.Println("   uint64: ",u64)
	fmt.Println("浮動小数: ")
	fmt.Println("   float32: ",flt32)
	fmt.Println("   float64: ",flt64)
	fmt.Println("複素数: ")
	fmt.Println("   complex64: ",com64)
	fmt.Println("   complex128: ",com128)
	fmt.Println("真偽値: ",boolean)
	fmt.Println("配列: ",arr)
	fmt.Println("   大きさ: ",len(arr))
	fmt.Println("マップ: ",dict)
	fmt.Println("   大きさ: ",len(dict))
	fmt.Println("クロージャ:\r\n",square)

}

// func ***() {} の型の関数は,関数外でのみ宣言可能
func cube(val float64) float64 {
	return val*val*val
}

/*
	変数宣言 : var x
	定数宣言 : const a
*/