package main

import "sync"
import "math"

/*
	Goの並列処理について
	Goは"21世紀のC言語"と言われる言語であるが,それは表現の簡素さもさることながら,現代で必要とされている並列処理を言語レベルで対応していることも一因している。
	一般的には並列処理といえば"スレッド"と説明されるが,Go言語では"goroutine"と呼ばれる。それは他の言語での並列処理よりも簡単な手続きで使える。
*/

func Threads() {

	print(ln{1},"これからスレッドを試します",ln{2})

	// 処理完了を待機するシステム
	wg := &sync.WaitGroup{}

	// 9個のスレッドそれぞれで6回のループ
	for m:=1;m<=9;m++ {
		wg.Add(1)
		go func(m int) {
			for n:=1;n<=6;n++ {
				print("|(",m,",",n,")| = ",math.Hypot(float64(m),float64(n)),ln{1})
			}
			wg.Done()
		} (m)
	}

	print("goroutineの終了を待ちます",ln{1})
	wg.Wait()
	print("goroutineは終了しました",ln{1})

	print(ln{3})

}