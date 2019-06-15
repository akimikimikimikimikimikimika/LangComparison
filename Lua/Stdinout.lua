#! /usr/bin/env lua

print("こんにちは。私の名前はLua,即ち月です。")
print("リオデジャネイロから来ました。")
print("あなたのことを教えてください")
aboutYou = io.read()
print(string.format("あなたは%sですね。わかりました。",aboutYou))
print("\r\n\r\nこれから幾つかの出力の仕方を披露しますね。")
print("後ろに改行を付けます")
io.write("後ろに改行を付けません。")
print("それから...")
io.stdout:write("こんな出力も可能です。改行しません。")
io.stderr:write("たまにはエラーも出したくなります。")
print("入力してみて")
io.stdin:read()
print("以上です")

print("\r\n")