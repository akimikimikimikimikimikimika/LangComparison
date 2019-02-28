#! /usr/local/bin/lua

print("こんにちは。私の名前はLua,即ち月です。")
io.write("リオデジャネイロから来ました。\n")
print("あなたのことを教えてください")
aboutYou = io.read()
print(string.format("あなたは%sですね。わかりました。",aboutYou))
