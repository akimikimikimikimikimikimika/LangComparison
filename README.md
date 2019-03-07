## LangComparison

このページでは,普段HTML+CSS+JavaScriptで十分こなせるため,他の言語の習得を必要と感じていない私が,他の色々な言語に触れてみる目的で用意した。これは,比較(プログラミング)言語学と言えるのだろうか。同じようなことを,それぞれの言語で行なっている。  
ここでは,次の言語をテストしている。  
コンパイルなく実行できる言語: Swift, Perl, Ruby, Python, Lua, PHP, PowerShell, Go, Shell (Bash,Ksh,Zsh,Tcshも含む)  
コンパイルの必要な言語: C++, C, Rust, Java  
App内で実行する言語: Tcl (Wishで開く)

## 各言語のページ

- [Swift](https://www.swift.org "Swift")

- [Perl](https://www.perl.org "Perl")
- [Ruby](https://www.ruby-lang.org "Ruby")
- [Python](https://www.python.org "Python")
- [PHP](http://www.php.net "PHP")
- [Lua](https://www.lua.org "Lua")
- [Bash](https://www.gnu.org/software/bash/ "Bourne-Again SHell")
- [PowerShell](https://github.com/PowerShell/PowerShell "PowerShell")

- [Java](https://www.java.com "Java")

- [C](http://www.open-std.org/jtc1/sc22/wg14/ "C")
- [C++](https://isocpp.org "C++")
- [Go](https://golang.org "Go")
- [Rust](https://www.rust-lang.org "Rust")

## 利用する際の注意

それぞれのOSで標準付属していない言語は上記リンクよりインストールする必要がある。

- macOS
	Perl, Ruby, Python, PHP, Bash は標準でインストール済。  
	Lua, Rust, Go はインストールされていない。[Homebrew](https://brew.sh "Homebrew")からインストールすることもできる。  
	C++, C, Swift のコンパイルには [Xcode](https://developer.apple.com/xcode/ "Xcode") が必要。App Storeから入手することもできる。  
	Javaをコンパイル/実行するには,Oracleから最新バージョンのJavaを入手してインストールする。  
	PowerShellは[GitHub](https://github.com/PowerShell/PowerShell "PowerShell")から入手可能。  

- Windows
	PowerShell は標準でインストール済。  
	Perl, Ruby, Python, PHP, Lua, Rust, Go はインストールされていない。  
	C++ のコンパイルには Visual C++ が必要らしい。

- Unix系OS (macOS除く)
	大抵の場合, Bash は標準でインストール済。  
	基本的にどの言語もインストールされていないので,それぞれのパッケージマネージャや上記リンクよりインストールする。

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
- Perl
```Shell
perl Perl.pl
```
- Ruby
```Shell
ruby Ruby.rb
```
- Python
```Shell
python Python.py
```
- PHP
```Shell
php PHP.php
```
- Lua
```Shell
lua Lua.lua # 実行
luac Lua.lua -o Luac.lua # コンパイル (オマケ,“Luac.lua”という名前のファイルが生成する)
```
- Bash
```Shell
bash Shell.sh
```
- Go
```Shell
go run Go.go
```
- Rust
```Shell
rustc Rust.rs # コンパイル (“Rust”という名前のファイルが生成する)
./Rust # 実行
```
- Java, C++, C
コンパイルの仕方はコード内に掲載している

## Shebang

macOSの場合, Swift, Perl, Ruby, Python, PHP, Lua, Shell, PowerShell には下に示すような実行パス(言語)を宣言するShebang (シェバン)を入れているため,ターミナルでそのまま実行できる。
```Shell
#! /bin/bash
```
但し, Shell, Perl, Ruby, Python, Lua はHomebrewでインストールした場合のディレクトリでShebangを設定したため,Homebrewから該当のformulaをインストールしないとShebangは使えない  
実行例 (Luaの場合,ディレクトリ移動を実行済)
```Shell
./Lua.lua # このように入力すればLua.luaを実行してくれる
```
### Shebangの一覧

|   | システム | Homebrew等 |
|:---|:--:|:--:|
| Swift | `/usr/bin/swift` | - |
| Perl | `/usr/bin/perl` | `/usr/local/bin/perl` |
| Ruby | `/usr/bin/ruby` | `/usr/local/bin/ruby` |
| Python | `/usr/bin/python` | `/usr/local/bin/python3.7` |
| PHP | `/usr/bin/php` | `/usr/local/bin/php` |
| Lua | - | `/usr/local/bin/lua` |
| PowerShell | - | `/usr/local/bin/pwsh` |
| Bash | `/bin/bash` | `/usr/local/bin/bash` |

なお,コマンドラインに `type swift` などと入力すれば,コンピュータで該当するものが表示される。

### 比較達成状況
すでに比較に取り掛かっている内容と,取り掛かる予定の内容を表示している  
今のところ,Perl/Ruby/Python/PHP/Luaで同時進行中
- [x] 標準入出力
- [x] 基本の値
- [x] 演算子
- [x] 条件分岐/ループ
- [x] 外部ソースの読み込み
- [ ] 文字列の長さ/文字取り出し
- [ ] 配列の操作
- [x] 正規表現での検索/置換
- [x] コマンドライン引数
- [ ] 数学関数
- [ ] システム情報取得
- [ ] 日付/時刻
- [ ] ファイル/フォルダ操作
- [ ] オブジェクト / クラス
- [ ] Bash / Swift / C++ / Rust 等へ拡充
