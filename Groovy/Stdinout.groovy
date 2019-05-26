println "こんにちは。私の名前はGroovy。"
println "あなたのことを教えてください"
String aboutYou = System.console().readLine "あなたは..."
println "あなたは $aboutYou ですね。わかりました。"

/*
    Groovyでは関数の実行の仕方に寛容
    次のいずれでも出力できる
        println "出力内容"
        println("出力内容")
*/

println "\r\n"