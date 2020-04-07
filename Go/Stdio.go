package main

import "fmt"
import "os"
import "log"
import "bufio"

func Stdio(){

	var stdin = bufio.NewScanner(os.Stdin)
	print(clean{},`
		こんにちは。私の名前はGo。
		あまりパッとしませんが,意外にも便利で,低レベルの機能にもアクセスできます
		あなたのことを教えてください。
	`)
	stdin.Scan()
	var aboutYou = stdin.Text()
	print(
		"あなたは ",aboutYou," ですね。わかりました",ln{1},
		"これから基本的な出力の仕方を紹介します",ln{1},
	)

	fmt.Print("後ろに改行を付けません。")
	fmt.Println("後ろに改行を付けます")
	fmt.Fprint(os.Stdout,"こんな出力も可能です。改行しません。") // Fにより出力先を明示できる

	os.Stdout.WriteString("こんな出力も可能です。改行しません。")
	os.Stderr.WriteString("たまにはエラーも出したくなります。")

	print(ln{1})

	log.Print("ログ形式の出力です。改行しません。")

	print(ln{2})

}