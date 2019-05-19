package main

import "fmt"

func Loop() {

	fmt.Println("\r\nこれからループ処理を試します\r\n")

	fmt.Println("\r\nfor n:=0;n<3;n++ {…}")
	for n:=0;n<3;n++ {
		fmt.Println("n=",n,"のループ")
	}

	fmt.Println("\r\nfor n,c := range array {…}")
	var cs = []string{"壱","弐","参"}
	for n,c := range cs {
		fmt.Println(n,"番目 c=\"",c,"\"のループ")
		// n,cと2つ並んでいるが,不要な要素があれば,_で置くことで,変数の代わりになる
		// e.g. n,c → _,c
	}

	fmt.Println("\r\nfor ~ {…}")
	str := ""
	for len(str)<6 {
		str+="*"
		fmt.Println(str)
	}
	/*
		無限ループは for {…} により作れる。break でループから抜ける。
	*/

	fmt.Println("\r\n\r\n")

}