package main

import "fmt"
import "regexp"
import "strings"

func RegExp() {

	fmt.Println("\r\nこれから正規表現を試します\r\n")

	var text="The Quick Brown Fox Jumps Over The Lazy Dog"
	fmt.Println(text," →")

	fmt.Println("\r\n検索")
	re1,_ := regexp.Compile(`(?i)the ([a-z]+) ([a-z]+) fox`)
		// 第2引数でなぜか nil を返すので受取拒否
	fmt.Println(re1.FindStringSubmatch(text))
		/*
			検索するメソッド

			FindString(text) string
				-- 見つかった文字列 (最初の1つだけ)
			FindStringSubmatch(text) []string
				-- 見つかった文字列 + ()内の文字列 の配列
			FindAllString(text) []string
				-- 見つかった全ての文字列 の配列
			FindAllStringSubmatch(text) [][]string
				-- 見つかった文字列 + ()内の文字列 の配列 の配列

			これら4つに対して, 例えば FindString → FindStringIndex のように,後ろに Index を付加した名前のメソッドもそれぞれ存在して,それらはマッチした文字列を返すのではなく,マッチした先頭の文字の位置を返す。
			これら4つのメソッドは, 例えば FindString → Find のように, String を抜いた名前のメソッドもそれぞれ存在して,入出力の文字列が string型 の代わりに byte型 になっている。
		*/

	fmt.Println("\r\nマッチの確認")
	re2,_ := regexp.Compile(`(?i)fox jumps`)
	if (re2.MatchString(text)) {
		fmt.Println("狐が飛んでいます")
	} else {
		fmt.Println("狐は飛んでいません")
	}
	re3,_ := regexp.Compile("(?i)dog jumps")
	if (re3.MatchString(text)) {
		fmt.Println("犬が飛んでいます")
	} else {
		fmt.Println("犬は飛んでいません")
	}
	// MatchString の第1引数はコンパイルした正規表現オブジェクトでも正規表現の文字列でも構わない。

	fmt.Println("\r\n置換")
	re4,_ := regexp.Compile(`(?i)o`)
	replaced := re4.ReplaceAllString(text,"« ö »")
	fmt.Println(replaced)
	// Go言語では, $1 や \1 を使った置換はできない

	fmt.Println("\r\n分割と結合")
	re5,_ := regexp.Compile(`(?i)(the|s)? `)
	array := re5.Split(text,-1)
	arranged := strings.Join(array,"_")
	fmt.Println(arranged)

	/*
		Compile() : 文字列から正規表現オブジェクトにコンパイルする
		MustCompile() : 同様にコンパイルするが,失敗するとそこで実行が停止される
	*/
}