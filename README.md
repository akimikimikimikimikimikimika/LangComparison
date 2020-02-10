## LangComparison

このページは,色々な言語に触れてみる目的で用意した。これは,比較(プログラミング)言語学と言えるのだろうか。気の趣くままに進めている。同じようなことを,それぞれの言語で行なっている。  
ここで取り上げる言語にのうち,既にどれかの言語を知っているのであれば,取り掛かり易い。同じ内容をそれぞれの言語で書いているから,自分の知る言語とまだ触れたことのない言語を比較してみることで,より理解しやすいかもしれない。  
ここに掲載されたコードをただ見ているだけでなく,条件を変えてみるなど,自分で書き直したりして,使ってみると分かってくるかもしれない。 或いは,それぞれの言語を使うにあたってのヒントとして参照しても良い。  
もし使っていて,この言語のこの機能はあの言語でも使えるのに... というのがあれば紹介してほしい。どの言語でも言語の機能を完全に網羅できているわけではない。  
GitHubの当リポジトリページの上部に言語の割合を示す帯グラフがあるが,ファイルサイズの和が大きい言語順に並んでいるので,同じことを書いていても,記述量が多くなってしまう言語ほど上位に来やすい。だから,あてにはならない。

## 言語

### スクリプト言語+コンパイル言語
- [Swift](https://www.swift.org "Swift")

### スクリプト言語
- [Perl](https://www.perl.org "Perl")
- [Ruby](https://www.ruby-lang.org "Ruby")
- [PHP](http://www.php.net "PHP")
- [Python](https://www.python.org "Python")
- [R](https://www.r-project.org "R")
- [Julia](https://www.julialang.org "Julia")
- [Lua](https://www.lua.org "Lua")
- [JavaScript](https://nodejs.org)
- [Bash](https://www.gnu.org/software/bash "Bourne-Again SHell")
- [PowerShell](https://github.com/PowerShell/PowerShell "PowerShell")

### JVM言語
- [Java](https://www.java.com "Java")
- [Groovy](http://groovy-lang.org "Groovy")
- [Scala](https://www.scala-lang.org "Scala")
- [Kotlin](https://kotlinlang.org "Kotlin")

### コンパイル言語
- Fortran
- [C](http://www.open-std.org/jtc1/sc22/wg14 "C")
- [C++](https://isocpp.org "C++")
- [Go](https://golang.org "Go")
- [Rust](https://www.rust-lang.org "Rust")

## 比較達成状況
比較達成状況は, [Contents.md](https://github.com/akimikimikimikimikimikimika/LangComparison/blob/master/Contents.md "比較達成状況") に記載している。

## 利用する際の注意

それぞれのOSで標準付属していない言語は上記リンクよりインストールする必要がある。

- macOS
	* Perl, Ruby, PHP, Python, Bash は標準でインストール済。
		但し,多くの言語のインタプリタは,最新版ではない。最新版が必要であれば,[Homebrew](https://brew.sh "Homebrew")など外部から入手する。
	* Julia, Lua, Rust, Go, Kotlin, Scala, Groovy はインストールされていない。Homebrewからインストールすることもできる。
	* C, C++ のコンパイラ Clang は標準でインストール済だが, [Xcode](https://developer.apple.com/xcode/ "Xcode") が必要。App Storeから入手することもできる。
		コンパイラとしてGCCやIntel C++ Compilerなどが必要な場合は別途入手する。GCCはHomebrewからインストールすることもできる。
	* Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") はインストールされていない。GFortranはHomebrewからインストールすることもできる。
	* Swift のコンパイラもインストールされているが,これも [Xcode](https://developer.apple.com/xcode/ "Xcode") が必要。
	* Javaをコンパイル/実行するには,Oracleから最新バージョンのJavaを入手してインストールする。Homebrewからインストールすることもできる。
	* PowerShellは [GitHub上の同リポジトリ](https://github.com/PowerShell/PowerShell "PowerShell") から入手可能。

- Windows
	* PowerShell は標準でインストール済。
	* Perl, Ruby, PHP, Python, Julia, Lua, Rust, Go, Kotlin, Scala, Groovy はインストールされていない。各言語の公式サイトからダウンロードするか,Chocolateyなどのパッケージマネージャを利用する。
	* C++ のコンパイルには Visual C++ が必要らしい。Visual Studioをインストールすることで利用可能になるという。Clang,GCC,Intel C++ Compilerなどが必要な場合は別途入手する。
	* Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") は公式サイトからインストールすることもできる。

- Unix系OS (macOS除く)
	* 大抵の場合, Bash は標準でインストール済。
	* C, C++ のコンパイラとして GCC/Clang は標準でインストール済。他のコンパイラが必要な場合は別途入手する。
	* Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") は公式サイトからインストールすることもできる。
	* 基本的にどの言語もインストールされていないので,それぞれのパッケージマネージャや上記リンクよりインストールする。
	* PowerShellは [GitHub上の同リポジトリ](https://github.com/PowerShell/PowerShell "PowerShell") から入手可能。
	* Linuxの場合,パッケージ等でRubyをインストールすれば,Homebrewが使えたりする。(Linuxbrew)

## 実行方法

ここでは,それぞれの言語を実行する方法を説明する。Makefileによりコンパイル/実行コマンドを指定したので,簡単に実行することができる
```sh

cd LangComparison # 当リポジトリのディレクトリに移動
# make [lang]-[command] の形でアクションを指定する

# Cの例
make c-build # コンパイル
make c-run   # 実行
make c-clean # コンパイルしたファイルを削除
make c-retry # build+run
make c       # c-retry と同等

make c-run -e ARGS="A B C" # 引数に A B C を渡して実行

# Bashの例
make bash # Mainを実行
make bash -e PAGE=Values # Valuesを実行
make bash -e PAGE=Arguments ARGS="A B C" # 引数に A B C を渡して実行
```

それぞれの言語で以下のコマンドが指定可能である

- コンパイル言語
| 言語 | | | | |
|:-:|:-|:-|:-|:-|
| Fortran | `f-build` | `f-run` | `f-clean` | `f-retry` |
| C | `c-build` | `c-run` | `c-clean` | `c-retry` |
| C++ | `cpp-build` | `cpp-run` | `cpp-clean` | `cpp-retry` |
| Objective-C | `objcc-build` | `objc-run` | `objc-clean` | `objc-retry` |
| Swift | `swiftc-build` | `swiftc-run` | `swiftc-clean` | `swiftc-retry` |
| Go | `go-build` | `go-run` | `go-clean` | `go-retry` |
| Java | `java-build` | `java-run` | `java-clean` | `java-retry` |
| Kotlin | `kotinc-build` | `kotinc-run` | `kotinc-clean` | `kotinc-retry` |
| Scala | `scalac-build` | `scalac-run` | `scalac-clean` | `scalac-retry` |
| Groovy | `groovyc-build` | `groovyc-run` | `groovyc-clean` | `groovyc-retry` |

	runやretryの時に `-e ARGS="引数1 引数2…"` とオプションを追加すれば実行時に引数を渡すことができる

- スクリプト言語
| 言語 | |
|:-:|:-|
| Swift | `swift` |
| Perl | `perl`,`pl` |
| Ruby | `ruby`,`rb` |
| PHP | `php` |
| Python | `python`,`py` |
| Julia | `julia`,`jl` |
| Lua | `lua` |
| JavaScript | `javascript`,`js` |
| Bash | `bash`,`sh` |
| PowerShell | `ps`,`pwsh`,`powershell` |
| Kotlin | `kotlin`,`kt` |
| Scala | `scala` |
| Groovy | `groovy` |

	`-e PAGE=項目` とオプションを追加すれば実行する項目を指定することができる (指定しなければMain)
	`-e ARGS="引数1 引数2…"` とオプションを追加すれば実行時に引数を渡すことができる

- Rust
	```sh
	# コンパイル : フォルダ Rust 内に bin という実行ファイルが生成される
	(cd Rust ; cargo build --target-dir . --manifest-path Cargo.toml ; mv debug/rustdemo bin ; rm -r debug .rustc_info.json)

	# 実行
	Rust/bin
	```

## REPL

スクリプト言語などの場合,コマンドライン上でコードを入力して,その場で実行するREPLに対応していたりする。
以下では,REPLの起動方法を説明する。
尚,何れの場合も Control+D でREPLを終了させることができる。

```sh
swift       # Swift
perl        # Perl
ruby        # Ruby
php         # PHP
python3     # Python
julia       # Julia
R           # R
bash        # Bash
pwsh        # PowerShell
lua         # Lua
node        # JavaScript
groovysh    # Groovy
scala       # Scala
Kotlinc-jvm # Kotlin
```

	JavaScriptをWeb上で試す場合は, [Tester](https://akimikimikimikimikimikimika.github.io/Tester/ "Tester") を使うことをお勧めする。  
	勿論,他のサイト上にもJavaScriptやHTMLのテスターは数多く存在するので,そちらを使っても構わない。  
	数多くの言語のREPL環境を整える [REPL.it](https://repl.it) もおすすめである

## Shebang

スクリプト言語の多くには下に示すような実行パス (各言語のインタプリタ) を宣言するShebang (シェバン)を入れることで,ターミナルでそのまま実行できる。
```sh
#! /usr/local/bin/lua
```
実行例 (Luaの場合•ディレクトリ移動を実行済)
```sh
./Main.lua
# このように入力すれば Main.lua を実行してくれる
# lua Main.lua と入力する必要がない
```
但し,このリポジトリ内のファイルは次のように指定しているため,実行環境において最適なインタプリタを見つけて,それで実行してくれる。
```sh
#! /usr/bin/env lua

# これにより,コンピュータにインストールされているLuaのインタプリタで実行してくれる
```
Unix系OSの場合は,コマンドラインに `type R` 又は `which R` と入力すれば,コンピュータが標準で使用する実行パスが表示される。
