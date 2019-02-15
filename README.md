## LangComparison

このページでは,普段HTML+CSS+JavaScriptで十分こなせるため,他の言語の習得を必要と感じていない私が,他の色々な言語に触れてみる目的で用意した。同じようなことを,それぞれの言語で行なっている。
ここでは,次の言語をテストしている。
コンパイルなく実行できる言語: Swift, Perl, Ruby, Python, Lua, Shell (Bash,Ksh,Zsh,Tcshも含む)
コンパイルの必要な言語: C++, Rust, Java
App内で実行する言語: Tcl (Wishで開く)

## macOSで利用する際の注意

Lua,Rustは標準でインストールされていないため,[Homebrew](https://brew.sh "Homebrew")でインストールする必要がある。又,C++もおそらく[Xcode](https://developer.apple.com/xcode/ "Xcode")が必要であるし,JavaもOracleから最新バージョンをインストールする。

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
- Lua
```Shell
lua Lua.lua
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

## Shebang (シェバン)

Perl,Ruby,