object Stdinout {

    def main(args: Array[String]):Unit = {

        println("こんにちは。私の名前はScala。")
        println("あなたのことを教えてください")
        val aboutYou = io.StdIn.readLine("あなたは...")
        println(s"あなたは $aboutYou ですね。わかりました。")

        println("\r\n")

    }

}