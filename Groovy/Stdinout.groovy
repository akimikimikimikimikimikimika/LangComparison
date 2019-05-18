// Groovy

/*
	複数行のコメント
*/

println "こんにちは。私の名前はGroovy。"

/*
    GroovyはJavaと違って,コードをクラスによって記載する必要はないが,これは以下のようなコードを実行しているに等しい

    import org.codehaus.groovy.runtime.InvokerHelper
    class Main extends Script {
        def run() {
            // ここにGroovyのソースコードが現れる
        }
        static void main(String[] args) {
            InvokerHelper.runScript(Main, args)
        }
    }

*/