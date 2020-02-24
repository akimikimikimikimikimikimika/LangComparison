package main

import "regexp"
import "strings"

func RegExp() {

	print(ln{1},"これから正規表現を試します",ln{2})

	text:="The Quick Brown Fox Jumps Over The Lazy Dog"
	print(text," →",ln{2})

	print("検索",ln{1})
	re1,_ := regexp.Compile(`(?i)the ([a-z]+) ([a-z]+) fox`)
		// 第2引数でなぜか nil を返すので受取拒否
	print(re1.FindStringSubmatch(text),ln{2})
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

	print("マッチの確認",ln{1})
	re2,_ := regexp.Compile(`(?i)fox jumps`)
	if (re2.MatchString(text)) {
		print("狐が飛んでいます",ln{1})
	} else {
		print("狐は飛んでいません",ln{1})
	}
	re3,_ := regexp.Compile("(?i)dog jumps")
	if (re3.MatchString(text)) {
		print("犬が飛んでいます",ln{2})
	} else {
		print("犬は飛んでいません",ln{2})
	}
	// MatchString の第1引数はコンパイルした正規表現オブジェクトでも正規表現の文字列でも構わない。

	print("置換",ln{1})
	re4,_ := regexp.Compile(`(?i)o`)
	replaced := re4.ReplaceAllString(text,"« ö »")
	print(replaced,ln{2})
	// Go言語では, $1 や \1 を使った置換はできない

	print("分割と結合",ln{1})
	re5,_ := regexp.Compile(`(?i)(the|s)? `)
	array := re5.Split(text,-1)
	arranged := strings.Join(array,"_")
	print(arranged,ln{1})

	/*
		Compile() : 文字列から正規表現オブジェクトにコンパイルする
		MustCompile() : 同様にコンパイルするが,失敗するとそこで実行が停止される
	*/

	print(ln{3})

}