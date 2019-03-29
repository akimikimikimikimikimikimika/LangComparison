package main

import "fmt"
import "os"
import "bufio"

func Stdinout(){
	var stdin = bufio.NewScanner(os.Stdin)
	fmt.Println(`
こんにちは。私の名前はGo。
あまりパッとしませんが,意外にも便利で,低レベルの機能にもアクセスできます
あなたのことを教えてください。
	`)
	stdin.Scan()
	var aboutYou = stdin.Text()
	fmt.Println("あなたは ",aboutYou," ですね。わかりました")
}