## LangComparison

このページは,色々な言語に触れてみる目的で用意した。これは,比較(プログラミング)言語学と言えるのだろうか。気の趣くままに進めている。同じようなことを,それぞれの言語で行なっている。  
ここで取り上げる言語にのうち,既にどれかの言語を知っているのであれば,取り掛かり易い。同じ内容をそれぞれの言語で書いているから,自分の知る言語とまだ触れたことのない言語を比較してみることで,より理解しやすいかもしれない。  
ここに掲載されたコードをただ見ているだけでなく,条件を変えてみるなど,自分で書き直したりして,使ってみると分かってくるかもしれない。 或いは,それぞれの言語を使うにあたってのヒントとして参照しても良い。  
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
	Perl, Ruby, PHP, Python, Bash は標準でインストール済。  
	但し,多くの言語のインタプリタは,最新版ではない。特に, Python は互換性の問題からバージョン 2.x 系統である。そのため,最新版が必要であれば,[Homebrew](https://brew.sh "Homebrew")など外部から入手する。  
	Julia, Lua, Rust, Go はインストールされていない。Homebrewからインストールすることもできる。  
	C, C++ のコンパイラ Clang は標準でインストール済。コンパイラとしてGCCやIntel C++ Compilerなどが必要な場合は別途入手する。  
	Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") や上述のGCCはHomebrewからインストールすることもできる。  
	Swift のコンパイルには [Xcode](https://developer.apple.com/xcode/ "Xcode") が必要。App Storeから入手することもできる。  
	Javaをコンパイル/実行するには,Oracleから最新バージョンのJavaを入手してインストールする。  
	PowerShellは[GitHub](https://github.com/PowerShell/PowerShell "PowerShell")から入手可能。  

- Windows  
	PowerShell は標準でインストール済。  
	Perl, Ruby, PHP, Python, Julia, Lua, Rust, Go はインストールされていない。各言語の公式サイトからダウンロードする。  
	C++ のコンパイルには Visual C++ が必要らしい。Visual Studioから使うと思われる。  
	Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") は公式サイトからインストールすることもできる。  
	Intel C++ Compilerなどが必要な場合は別途入手する。  

- Unix系OS (macOS除く)  
	大抵の場合, Bash は標準でインストール済。  
	C, C++ のコンパイラ GCC は標準でインストール済。コンパイラとしてClangやIntel C++ Compilerなどが必要な場合は別途入手する。  
	Fortran のコンパイラ [GFortran](https://gcc.gnu.org/wiki/GFortranBinaries "GFortran") は公式サイトからインストールすることもできる。  
	基本的にどの言語もインストールされていないので,それぞれのパッケージマネージャや上記リンクよりインストールする。  
	Linuxの場合,Rubyをインストールすれば,Homebrewが使えたりする。(Linuxbrew)  

## 実行方法

ここでは,それぞれの言語を実行する方法を説明する。いずれも,ターミナルを開き,次に示すコードを入力するのである。  
まずは,次のコマンドで当リポジトリのディレクトリに移動する。
```Shell
cd LangComparison
```
そして,言語ごとに次のコードを実行する。
- Swift  
```Shell
# スクリプト言語として利用する場合
swift Swift/Main.swift

# コンパイル : フォルダ Swift-compiling 内に bin という実行ファイルが生成される
(cd Swift-compiling ; swiftc -o bin *.swift)

# 実行
Swift-compiling/bin
```
- Perl
```Shell
perl Perl/Main.pl
```
- Ruby
```Shell
ruby Ruby/Main.rb
```
- PHP
```Shell
php PHP/Main.php
```
- Python
```Shell
python3.7 Python/Main.py # 最新のPython
# システムに付属するPythonはPython2.x系列であることが多く,当リポジトリで取り扱うコードは実行できない
```

- Julia
```Shell
julia Julia/Main.jl
```
- R
```Shell
# Stdinout.r を実行する例
Rscript R/Stdinout.r
```
- Bash
```Shell
bash Bash/Main.sh
```
- PowerShell
```Shell
pwsh PowerShell/Main.ps1
```
- Lua
```Shell
lua Lua/Main.lua # 実行
```
- JavaScript  
JavaScriptはWeb技術の一環なので,Webブラウザでテストできる。例えば,ソースコードを [Tester](https://akimikimikimikimikimikimika.github.io/Tester/ "Tester") にコピー&ペーストすると実行できる。  
又は,コンピュータに [Node.js](https://nodejs.org/ja/ "Node.js") をインストールすれば,以下のようなシェルコマンドでJavaScriptを直接実行することもできる。  
但し,Webブラウザ上でないと実行できないコードもあるので,注意する必要がある。
```Shell
# Stdinout.js を実行する例
node JavaScript/Stdinout.js
```

- Java
```Shell
# コンパイル : フォルダ Java 内に bin.jar というJavaアーカイブファイルが生成される
(cd Java ; javac *.java ; zip -q bin.jar *.class META-INF/MANIFEST.MF ; rm *.class)

# 実行
java -jar Java/bin.jar

# 個別のファイルを実行 (例: Stdinout.java を実行)
(cd Java ; javac Stdinout.java ; java Stdinout)
```
- Groovy
```Shell
# 例: Stdinout.groovy を実行
groovy Groovy/Stdinout.groovy
```
- Scala
```Shell
# 例: Stdinout.scala を実行
scala Scala/Stdinout.scala
```
- Kotlin
```Shell
# スクリプト言語として利用する場合 (例: Stdinout.kts を実行)
kotlinc -script Kotlin/Stdinout.kts

# コンパイル : フォルダ Kotlin-compiling 内に bin.jar というJavaアーカイブファイルが生成される
(cd Kotlin-compiling ; kotlinc -include-runtime -d bin.jar *.kt)
	# -include-runtime オプションを付けることで,アーカイブ内にKotlinのフレームワークが埋め込まれる
	# 逆にこのオプションを付加しないとアーカイブは実行できない

# 実行
kotlin Kotlin-compiling/bin.jar
	# JARファイルなので, java -jar Kotlin-compiling/bin.jar でも実行できる
```

- Fortran  
以下の例は,GFortranコンパイラを使う例
```Shell
# コンパイル : フォルダ Fortran 内に bin という実行ファイルが生成される
(cd Fortran ; gfortran -fopenmp -o bin *.f95)
	# スレッド処理のためにOpenMPを利用するため -fopenmp オプションが必要みたい

# 実行
Fortran/bin
```
- C  
以下の例は,Clangコンパイラを使う例 (GCCなら clang を gcc に置き換える)
```Shell
# コンパイル : フォルダ C 内に bin という実行ファイルが生成される
(cd C ; clang -std=c17 -o bin *.c)

# 実行
C/bin
```
- C++  
以下の例は,Clangコンパイラを使う例 (GCCなら clang++ を g++ に置き換える)
```Shell
# コンパイル : フォルダ C++ 内に bin という実行ファイルが生成される
(cd C++ ; clang++ -std=c++17 -pthread -o bin *.cpp)
	# スレッド処理に関して取り扱うため -pthread オプションが必要みたい

# 実行
C++/bin
```
- C  
以下の例は,Clangコンパイラを使う例
```Shell
# コンパイル : フォルダ Objective-C 内に bin という実行ファイルが生成される
(cd Objective-C ; clang -ObjC -framework Foundation -o bin *.m)

# 実行
Objective-C/bin
```
- Go
```Shell
# コンパイル : フォルダ Go 内に bin という実行ファイルが生成される
(cd Go ; go build ; mv Go bin)

# 実行
Go/bin
```
- Rust
```Shell
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
```Shell
swift
```
- Perl
```Shell
perl
```
- Ruby
```Shell
ruby
```
- PHP
```Shell
php
```
- Python
```Shell
python3.7 # 最新のPython
python    # システムに付属するPython
```
- R
```Shell
R
```
- Julia
```Shell
julia
```
- Bash
```Shell
bash
```
- PowerShell
```Shell
pwsh
```
- Lua
```Shell
lua
```
- JavaScript (Node.js)  
```Shell
node
```
Web上で試す場合は, [Tester](https://akimikimikimikimikimikimika.github.io/Tester/ "Tester") を使うことをお勧めする。勿論,他のサイト上にもJavaScriptやHTMLのテスターは数多く存在する。

- Groovy
```Shell
groovysh
```
- Scala
```Shell
scala
```
- Kotlin
```Shell
kotlinc-jvm
```


## Shebang

macOSの場合, Swift, Perl, Ruby, PHP, Python, Julia, R, PowerShell, Bash, Lua には下に示すような実行パス (各言語のインタプリタ) を宣言するShebang (シェバン)を入れているため,ターミナルでそのまま実行できる。
```Shell
#! /usr/local/bin/lua
```
但し, Perl, Ruby, PHP, Python, Julia, R, Bash, PowerShell, Lua は Homebrew 等でインストールした場合のディレクトリでShebangを設定している。システムのインタプリタなど他の実行パスを使用する場合は,適宜置き換える必要がある。インストールされているシステムによっては必ずしも以下に示す場所ではないため,注意する。  
実行例 (Luaの場合•ディレクトリ移動を実行済)
```Shell
./Lua.lua # このように入力すればLua.luaを実行してくれる
```
### Shebangの一覧

|   | システム標準のインタプリタ | 外部のインタプリタ |
|:---|:--:|:--:|
| Swift | **`/usr/bin/swift`** | - |
| Perl | `/usr/bin/perl` | **`/usr/local/bin/perl`** |
| Ruby | `/usr/bin/ruby` | **`/usr/local/bin/ruby`** |
| PHP | `/usr/bin/php` | **`/usr/local/bin/php`** |
| Python | `/usr/bin/python` | **`/usr/local/bin/python3.7`** |
| Julia | - | **`/usr/local/bin/julia`** |
| R | - | **`/usr/local/bin/Rscript`** |
| Bash | `/bin/bash` | **`/usr/local/bin/bash`** |
| PowerShell | - | **`/usr/local/bin/pwsh`** |
| Lua | - | **`/usr/local/bin/lua`** |

太字で指定したShebangが指定されている  
なお,Unix系OSの場合は,コマンドラインに `type R` 又は `which R` と入力すれば,コンピュータが標準で使用する実行パスが表示される。
