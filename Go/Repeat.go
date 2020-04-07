package main

func Repeat() {

	print(ln{1},"これから繰り返し処理を試します",ln{2})

	print(ln{1},"for n:=0;n<3;n++ {…}",ln{1})
	for n:=0;n<3;n++ {
		print("n=",n,"のループ",ln{1})
	}

	print(ln{1},"for n,c := range array {…}",ln{1})
	var cs = []string{"壱","弐","参"}
	for n,c := range cs {
		print(n,"番目 c=\"",c,"\"のループ",ln{1})
		// n,cと2つ並んでいるが,不要な要素があれば,_で置くことで,変数の代わりになる
		// e.g. n,c → _,c
	}

	print(ln{1},"for ~ {…}",ln{1})
	str := ""
	for len(str)<6 {
		str+="*"
		print(str,ln{1})
	}
	/*
		無限ループは for {…} により作れる。break でループから抜ける。
	*/

	print(ln{3})

}