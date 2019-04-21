#! /usr/local/bin/julia

println("""
こんにちは。私の名前はJulia。
あなたのことを教えてください
""")

print("あなたは...")
aboutYou = readline()

println("""
あなたは $(aboutYou) ですね。わかりました。

これから幾つかの出力の仕方を披露しますね。
""")
println("後ろに改行を付けます")
print("後ろに改行を付けません。")
println(stderr,"たまにはエラーも出したくなります。")

println("入力してみて (改行してからCtrl+Dで終了)")
read(stdin,String)
println("以上です")

println("\r\n")