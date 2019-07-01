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
- [Bash](https://www.gnu.org/software/bash "Bourne-Again SHell")
- [PowerShell](https://github.com/PowerShell/PowerShell "PowerShell")

### ブラウザ上で実行する言語
- JavaScript

### Java+Java関連の言語
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
		但し,多くの言語のインタプリタは,最新版ではない。特に, Python は互換性の問題からバージョン 2.x 系統である。そのため,最新版が必要であれば,[Homebrew](https://brew.sh "Homebrew")など外部から入手する。
	* Julia, Lua, Rust, Go はインストールされていない。Homebrewからインストールすることもできる。
	* C, C++ のコンパイラ Clang は標準でインストール済だが, [Xcode](https://developer.apple.com/xcode/ "Xcode") が必要。App Storeから入手することもできる。
		コンパイラとしてGCCやIntel C++ Compilerなどが必要な場合は別途入手する。GCCはHomebrewからインストールすることもできる。
	* Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") はインストールされていない。GFortranはHomebrewからインストールすることもできる。
	* Swift のコンパイラもインストールされているが,これも [Xcode](https://developer.apple.com/xcode/ "Xcode") が必要。
	* Javaをコンパイル/実行するには,Oracleから最新バージョンのJavaを入手してインストールする。Homebrewからインストールすることもできる。
	* PowerShellは [GitHub上の同リポジトリ](https://github.com/PowerShell/PowerShell "PowerShell") から入手可能。

- Windows
	* PowerShell は標準でインストール済。
	* Perl, Ruby, PHP, Python, Julia, Lua, Rust, Go はインストールされていない。各言語の公式サイトからダウンロードするか,Chocolateyなどのパッケージマネージャを利用する。
	* C++ のコンパイルには Visual C++ が必要らしい。Visual Studioをインストールすることで利用可能になるという。GCCやIntel C++ Compilerなどが必要な場合は別途入手する。
	* Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") は公式サイトからインストールすることもできる。

- Unix系OS (macOS除く)
	* 大抵の場合, Bash は標準でインストール済。
	* C, C++ のコンパイラとして GCC/Clang は標準でインストール済。(LinuxはGCC) コンパイラとしてIntel C++ Compilerなどが必要な場合は別途入手する。
	* Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") は公式サイトからインストールすることもできる。
	* 基本的にどの言語もインストールされていないので,それぞれのパッケージマネージャや上記リンクよりインストールする。
	* PowerShellは [GitHub上の同リポジトリ](https://github.com/PowerShell/PowerShell "PowerShell") から入手可能。
	* Linuxの場合,パッケージ等でRubyをインストールすれば,Homebrewが使えたりする。(Linuxbrew)

## 実行方法

ここでは,それぞれの言語を実行する方法を説明する。いずれも,ターミナルを開き,次に示すコードを入力するのである。
まずは,次のコマンドで当リポジトリのディレクトリに移動する。
```Shell
cd LangComparison
```
そして,言語ごとに次のコードを実行する。
- Swift
	```sh
	# スクリプト言語として利用する場合
	swift Swift/Main.swift

	# コンパイル : フォルダ Swift-compiling 内に bin という実行ファイルが生成される
	(cd Swift-compiling ; swiftc -o bin *.swift)

	# 実行
	Swift-compiling/bin
	```
- Perl
	```sh
	perl Perl/Main.pl
	```
- Ruby
	```sh
	ruby Ruby/Main.rb
	```
- PHP
	```sh
	php PHP/Main.php
	```
- Python
	```sh
	python3 Python/Main.py # 最新のPython
	# システムに付属するPythonはPython2.x系列であることが多く,当リポジトリで取り扱うコードは実行できない
	```

- Julia
	```sh
	julia Julia/Main.jl
	```
- R
	```sh
	# Stdinout.r を実行する例
	Rscript R/Stdinout.r
	```
- Bash
	```sh
	bash Bash/Main.sh
	```
- PowerShell
	```sh
	pwsh PowerShell/Main.ps1
	```
- Lua
	```sh
	lua Lua/Main.lua
	```
- JavaScript  
	JavaScriptはWeb技術の一環なので,Webブラウザでテストできる。例えば,ソースコードを [Tester](https://akimikimikimikimikimikimika.github.io/Tester/ "Tester") にコピー&ペーストすると実行できる。
	又は,コンピュータに [Node.js](https://nodejs.org/ja/ "Node.js") をインストールすれば,以下のようなシェルコマンドでJavaScriptを直接実行することもできる。
	但し,当リポジトリにはWebブラウザ上でないと実行できないコードや,Node.js上でないと実行できないコードもあるので,注意する必要がある。
	```sh
	# Stdinout.js を実行する例
	node JavaScript/Stdinout.js
	```

- Java
	```sh
	# コンパイル : フォルダ Java 内に bin.jar というJavaアーカイブファイルが生成される
	(cd Java ; javac *.java ; zip -q bin.jar *.class META-INF/MANIFEST.MF ; rm *.class)

	# 実行
	java -jar Java/bin.jar

	# 個別のファイルを実行 (例: Stdinout.java を実行)
	(cd Java ; javac Stdinout.java ; java Stdinout)
	```
- Groovy
	```sh
	# 例: Stdinout.groovy を実行
	groovy Groovy/Stdinout.groovy
	```
- Scala
	```sh
	# 例: Stdinout.scala を実行
	scala Scala/Stdinout.scala
	```
- Kotlin
	```sh
	# スクリプト言語として利用する場合 (例: Stdinout.kts を実行)
	kotlinc -script Kotlin/Stdinout.kts

	# コンパイル : フォルダ Kotlin-compiling 内に bin.jar というJavaアーカイブファイルが生成される
	(cd Kotlin-compiling ; kotlinc -include-runtime -d bin.jar *.kt)
		# -include-runtime オプションを付けることで,アーカイブ内にKotlinのフレームワークが埋め込まれる
		# このオプションを付加しないとアーカイブは実行できない

	# 実行
	kotlin Kotlin-compiling/bin.jar
		# JARファイルなので, java -jar Kotlin-compiling/bin.jar でも実行できる
	```

- Fortran  
	以下の例は,GFortranコンパイラを使う例
	```sh
	# コンパイル : フォルダ Fortran 内に bin という実行ファイルが生成される
	(cd Fortran ; gfortran *.f95 -o bin -fopenmp -O3)
		# スレッド処理のためにOpenMPを利用するため -fopenmp オプションが必要みたい

	# 実行
	Fortran/bin
	```
- C
	* Unix系OS  
		以下の例は, Clang を使う例 (GCCなら clang を gcc に置き換える)
		```sh
		# コンパイル : フォルダ C 内に bin という実行ファイルが生成される
		(cd C ; clang *.c -o bin -std=c17 -O3)

		# 実行
		C/bin
		```
	* Windows  
		以下の例は, Visual C++ を使う例
		```PowerShell
		# コンパイル : フォルダ C 内に bin という実行ファイルが生成される
		Set-Location -Path C
		cl /nologo /TC /O2 /Fe:bin.exe *.c

		# 実行
		C\bin
		```

- C++
	* Unix系OS  
		以下の例は, Clang を使う例 (GCCなら clang++ を g++ に置き換える)
		```sh
		# コンパイル : フォルダ C++ 内に bin という実行ファイルが生成される
		(cd C++ ; clang++ *.cpp -o bin -std=c++17 -O3)

		# 実行
		C++/bin
		```
	* Windows  
		以下の例は, Visual C++ を使う例
		```PowerShell
		# コンパイル : フォルダ C 内に bin という実行ファイルが生成される
		Set-Location -Path C++
		cl /nologo /TP /O2 /Fe:bin.exe *.cpp

		# 実行
		C++\bin
		```
- Objective-C  
	以下の例は,Clangコンパイラを使う例
	```sh
	# コンパイル : フォルダ Objective-C 内に bin という実行ファイルが生成される
	(cd Objective-C ; clang *.h *.m -o bin -ObjC -framework Foundation -O3)
		# Foundation フレームワークをインクルードすることでObjCになる

	# 実行
	Objective-C/bin
	```
- Go
	```sh
	# コンパイル : フォルダ Go 内に bin という実行ファイルが生成される
	(cd Go ; go build -o bin *.go)
		# -o bin と *.go の順序を逆にしてはならない

	# 実行
	Go/bin

	# このリポジトリ内のGoコードは,各々を直接実行することができない仕様になっているため,直接実行の方法はここではコメントアウトしておく
	# (cd Go ; go run Stdinout.go)
	```
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

- Swift
	```sh
	swift
	```
- Perl
	```sh
	perl
	```
- Ruby
	```sh
	ruby
	```
- PHP
	```sh
	php
	```
- Python
	```sh
	python3.7 # 最新のPython
	python    # システムに付属するPython
	```
- R
	```sh
	R
	```
- Julia
	```sh
	julia
	```
- Bash
	```sh
	bash
	```
- PowerShell
	```sh
	pwsh
	```
- Lua
	```sh
	lua
	```
- JavaScript (Node.js)
	```sh
	node
	```
	Web上で試す場合は, [Tester](https://akimikimikimikimikimikimika.github.io/Tester/ "Tester") を使うことをお勧めする。  
	勿論,他のサイト上にもJavaScriptやHTMLのテスターは数多く存在するので,そちらを使っても構わない。

- Groovy
	```sh
	groovysh
	```
- Scala
	```sh
	scala
	```
- Kotlin
	```sh
	kotlinc-jvm
	```


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

### Shebangの一覧

参考として,一般的なmacOSで使用されるインタプリタのパスを示す  
つまり,他のOSや,特殊な環境のmacOSの場合はこの通りにはならないことがある

|   | システム標準のインタプリタ | 外部のインタプリタ |
|:---|:--:|:--:|
| Swift | `/usr/bin/swift` | - |
| Perl | `/usr/bin/perl` | `/usr/local/bin/perl` |
| Ruby | `/usr/bin/ruby` | `/usr/local/bin/ruby` |
| PHP | `/usr/bin/php` | `/usr/local/bin/php` |
| Python | `/usr/bin/python` | `/usr/local/bin/python3` |
| Julia | - | `/usr/local/bin/julia` |
| R | - | `/usr/local/bin/Rscript` |
| Bash | `/bin/bash` | `/usr/local/bin/bash` |
| PowerShell | - | `/usr/local/bin/pwsh` |
| Lua | - | `/usr/local/bin/lua` |
