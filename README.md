## LangComparison

このページでは,普段HTML+CSS+JavaScriptで十分こなせるため,他の言語の習得を必要と感じていない私が,他の色々な言語に触れてみる目的で用意した。これは,比較(プログラミング)言語学と言えるのだろうか。気の趣くままに進めている。同じようなことを,それぞれの言語で行なっている。  
ここに掲載されたコードをただ見ているだけでなく,条件を変えてみるなど,自分で書き直したりして,使ってみると分かってくるかもしれない。 或いは,それぞれの言語を使うにあたってのヒントとして参照しても良い。  
  
ここでは,次の言語をテストしている。  
コンパイルなく実行できる言語: Swift, Perl, Ruby, PHP, Python, Lua, PowerShell, Bash  
コンパイルの必要な言語: C++, C, Go, Rust, Java  
ブラウザ上で実行する言語: JavaScript  
App内で実行する言語: Tcl (Wishで開く)  
  
GitHubの当リポジトリページの上部に言語の割合を示す帯グラフがあるが,どの言語も同じくらいの量は書いているはずだから,拮抗しているはず。おそらく,ファイルサイズの和が大きい言語順に並んでいるので,同じことを書いていても,記述量が多くなってしまう言語ほど上位に来やすい。だから,あてにはならない。

## 各言語のホームページ

- [Swift](https://www.swift.org "Swift")
- [Perl](https://www.perl.org "Perl")
- [Ruby](https://www.ruby-lang.org "Ruby")
- [PHP](http://www.php.net "PHP")
- [Python](https://www.python.org "Python")
- [Lua](https://www.lua.org "Lua")
- [Bash](https://www.gnu.org/software/bash/ "Bourne-Again SHell")
- [PowerShell](https://github.com/PowerShell/PowerShell "PowerShell")

- [Java](https://www.java.com "Java")

- [C](http://www.open-std.org/jtc1/sc22/wg14/ "C")
- [C++](https://isocpp.org "C++")
- [Go](https://golang.org "Go")
- [Rust](https://www.rust-lang.org "Rust")  
  
- [Node.js](https://nodejs.org/ja/ "Node.js")

## 利用する際の注意

それぞれのOSで標準付属していない言語は上記リンクよりインストールする必要がある。

- macOS  
	Perl, Ruby, PHP, Python, Bash は標準でインストール済。  
	但し,Pythonなどのインタプリタは,最新版ではないため,最新版が必要であれば,[Homebrew](https://brew.sh "Homebrew")など外部から入手する。  
	Lua, Rust, Go はインストールされていない。Homebrewからインストールすることもできる。  
	C++, C, Swift のコンパイルには [Xcode](https://developer.apple.com/xcode/ "Xcode") が必要。App Storeから入手することもできる。  
	Javaをコンパイル/実行するには,Oracleから最新バージョンのJavaを入手してインストールする。  
	PowerShellは[GitHub](https://github.com/PowerShell/PowerShell "PowerShell")から入手可能。  

- Windows  
	PowerShell は標準でインストール済。  
	Perl, Ruby, PHP, Python, Lua, Rust, Go はインストールされていない。  
	C++ のコンパイルには Visual C++ が必要らしい。
	Windowsでも,Windows 10のLinux Subsystemを使えば,Linuxbrewが使える。

- Unix系OS (macOS除く)  
	大抵の場合, Bash は標準でインストール済。  
	基本的にどの言語もインストールされていないので,それぞれのパッケージマネージャや上記リンクよりインストールする。  
	Linuxの場合,Rubyをインストールすれば,Homebrewが使えたりする。(Linuxbrew)

## 実行方法

ここでは,それぞれの言語を実行する方法を説明する。いずれも,ターミナルを開き,次に示すコードを入力するのである。  
まずは,次のコマンドでディレクトリに移動する。
```Shell
cd LangComparison
```
そして,言語ごとに次のコードを実行する。
- Swift
```Shell
swift Swift.swift
```
尚, `swiftc` コマンドでコンパイルできるが,ここでのコードはコンパイルして実行するのに対応していない
- Perl
```Shell
perl Perl.pl
```
- Ruby
```Shell
ruby Ruby.rb
```
- PHP
```Shell
php PHP.php
```
- Python
```Shell
python3.7 Python.py # 最新のPython
python Python.py    # システムに付属するPython (macOSなどでは古いバージョンが標準でインストールされている)
```
- Bash
```Shell
bash Bash.sh
```
- PowerShell
```Shell
pwsh PowerShell.ps1
```
- Java
Javaは基本的にコンパイルが必要。コンパイルの仕方はJavaコードに記載している。  
コンパイル済のJARファイルは次のコードで実行できる:  
```Shell
java -jar Java.jar
```
- JavaScript
JavaScriptはWeb技術の一環なので,Webブラウザでテストできる。例えば,ソースコードを [Tester](https://akimikimikimikimikimikimika.github.io/Tester/ "Tester") にコピー&ペーストすると実行できる。  
又は,コンピュータに [Node.js](https://nodejs.org/ja/ "Node.js") をインストールすれば,以下のようなシェルコマンドでJavaScriptを直接実行することもできる。  
```Shell
node JavaScript/Stdinout.js
```
但し,Webブラウザ上でないと実行できないコードもあるので,注意する必要がある。
- Lua
```Shell
lua Lua.lua # 実行
luac Lua.lua -o Luac.lua # コンパイル (オマケ,“Luac.lua”という名前のファイルが生成する)
```
- C++, C, Go, Rust  
コンパイルの仕方はコード内に掲載している

## Shebang

macOSの場合, Swift, Perl, Ruby, PHP, Python, PowerShell, Bash, Lua には下に示すような実行パス (各言語のインタプリタ) を宣言するShebang (シェバン)を入れているため,ターミナルでそのまま実行できる。
```Shell
#! /usr/local/bin/lua
```
但し, Perl, Ruby, PHP, Python, Bash, PowerShell, Lua は Homebrew 等でインストールした場合のディレクトリでShebangを設定している。システムのインタプリタなど他の実行パスを使用する場合は,適宜置き換える必要がある。  
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
| Bash | `/bin/bash` | **`/usr/local/bin/bash`** |
| PowerShell | - | **`/usr/local/bin/pwsh`** |
| Lua | - | **`/usr/local/bin/lua`** |

太字で指定したShebangが指定されている  
なお,Unix系OSの場合は,コマンドラインに `type swift` などと入力すれば,コンピュータが標準で使用する実行パスが表示される。

### 比較達成状況
すでに比較に取り掛かっている内容と,取り掛かる予定の内容を表示している  
今のところ, Swift / Perl / Ruby / PHP / Python / PowerShell / Bash で同時進行中  
※ 但し,Bashはオブジェクト指向言語ではないため,クラスを用意していない
※ 又,JavaScriptはファイル操作関連の機能があまりないため,用意していない
- [x] 標準入出力
- [x] 基本の値
- [x] 演算子
- [x] 条件分岐/ループ
- [x] 正規表現での検索/置換
- [x] ファイル/フォルダ操作
- [x] 数学関数
- [x] 日付/時刻
- [x] オブジェクト / クラス
- [x] 外部ソースの読み込み
- [x] コマンドライン引数
- [ ] 文字列の操作
- [ ] 配列の操作
- [ ] 型の変換
- [ ] 各種定数
- [ ] システム情報取得
- [ ] モジュール
- [ ] 例外の取り扱い
- [ ] C / C++ / Rust / Go 等へ拡充
