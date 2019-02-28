## LangComparison

このページでは,普段HTML+CSS+JavaScriptで十分こなせるため,他の言語の習得を必要と感じていない私が,他の色々な言語に触れてみる目的で用意した。これは,比較(プログラミング)言語学と言えるのだろうか。同じようなことを,それぞれの言語で行なっている。
ここでは,次の言語をテストしている。
コンパイルなく実行できる言語: Swift, Perl, Ruby, Python, Lua, PHP, Shell (Bash,Ksh,Zsh,Tcshも含む)
コンパイルの必要な言語: C++, Rust, Java
App内で実行する言語: Tcl (Wishで開く)

## macOSで利用する際の注意

Lua,Rustは標準でインストールされていないため,[Homebrew](https://brew.sh "Homebrew")でインストールする必要がある。又,C++もおそらく[Xcode](https://developer.apple.com/xcode/ "Xcode")が必要で,JavaもOracleから最新バージョンを入手してインストールする。

## macOSでの実行方法

ここでは,macOSにおいて,それぞれの言語を実行する方法を説明する。いずれも,ターミナルを開き,次に示すコードを入力するのである。
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
- Rust
```Shell
rustc Rust.rs # コンパイル (“Rust”という名前のファイルが生成する)
./Rust # 実行
```
- Java
```Shell
javac Java.java # コンパイル (“Java.class”という名前のファイルが生成する)
java Java # 実行
```
- C++
```Shell
g++ C++.cpp -o Cpp # コンパイル (“Cpp”という名前のファイルが生成する)
./Cpp # 実行
```

## Shebang

Swift,Perl,Ruby,Python,Lua,PHP,Shellには下に示すような実行パス(言語)を宣言するShebang (シェバン)を入れているため,ターミナルでそのまま実行できる。
```Shell
#! /bin/bash
```
但し,Perl,Ruby,Python,LuaはHomebrewでインストールした場合のディレクトリでShebangを設定したため,Homebrewから該当のformulaをインストールしないとShebangは使えない
実行例 (PHPの場合,ディレクトリ移動を実行済)
```Shell
./PHP.php # このように入力すればPHP.phpを実行してくれる
```
### macOSにおけるShebangの一覧

|   | システム | Homebrew |
|:---|:--:|:--:|
| Swift | `/usr/bin/swift` | - |
| Perl | `/usr/bin/perl` | `/usr/local/bin/perl` |
| Ruby | `/usr/bin/ruby` | `/usr/local/bin/ruby` |
| Python | `/usr/bin/python` | `/usr/local/bin/python3.7` |
| PHP | `/usr/bin/php` | `/usr/local/bin/php` |
| Lua | - | `/usr/local/bin/lua` |
| Bash | `/bin/bash` | `/usr/local/bin/bash` |

### 比較達成状況
すでに比較に取り掛かっている内容と,取り掛かる予定の内容を表示している  
今のところ,Perl/Ruby/Python/PHP/Luaで同時進行中
- [x] 標準入出力
- [x] 基本の値
- [x] 演算子
- [x] 条件分岐/ループ
- [x] 外部ソースの読み込み
- [ ] 文字列の長さ/文字取り出し
- [ ] 正規表現での検索/置換
- [ ] コマンドライン引数
- [ ] システム情報取得
- [ ] ファイル/フォルダ操作
- [ ] オブジェクト / クラス
- [ ] Bash / Swift / C++ / Rust 等へ拡充
