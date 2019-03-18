package main

import "fmt"

func values() {
	var str string = "ゴー"
	var integer int = 6
	/*
		他の進数の表記
		oct: 0475
		hex: 0xabcdef (大文字•小文字を問わない)
	*/
	var flt float64 = 6
	var com = 3+1i
	var boolean bool = true

	fmt.Println("\r\n色々な値を試します")
	fmt.Println("文字列: ",str)
	fmt.Println("整数: ",integer)
	fmt.Println("浮動小数: ",flt)
	fmt.Println("複素数: ",com)
	fmt.Println("真偽値: ",boolean)
}