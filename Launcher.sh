#! /bin/bash

cd `dirname "$0"`
while : ; do
    clear
    echo "次のうち,実行するコマンドを選択してください"
    echo
    echo "1. Swift"
    echo "2. Perl"
    echo "3. Ruby"
    echo "4. Python"
    echo "5. PHP"
    echo "6. Lua"
    echo "7. Shell"
    echo "8. Java (compile+execute)"
    echo "9. Rust (compile+execute)"
    echo "0. 終了"
    read -p "コマンド: " cmd
    clear
    case "$cmd" in
        0 ) break;;
        1 )
            if [ -f /usr/local/bin/swift ]; then
                /usr/local/bin/swift Swift.swift
            elif [ -f /usr/bin/swift ]; then
                /usr/bin/swift Swift.swift
            else
                echo "お使いのシステムにはSwiftがインストールされていません"
            fi;;
        2 )
            if [ -f /usr/local/bin/perl ]; then
                /usr/local/bin/perl Perl.pl
            elif [ -f /usr/bin/perl ]; then
                /usr/bin/perl Perl.pl
            else
                echo "お使いのシステムではPerlが利用できません"
            fi;;
        3 )
            if [ -f /usr/local/bin/ruby ]; then
                /usr/local/bin/ruby Ruby.rb
            elif [ -f /usr/bin/ruby ]; then
                /usr/bin/ruby Ruby.rb
            else
                echo "お使いのシステムではRubyが利用できません"
            fi;;
        4 )
            if [ -f /usr/local/bin/python3.7 ]; then
                /usr/local/bin/python3.7 Python.py
            elif [ -f /usr/bin/python ]; then
                /usr/bin/python Python.py
            else
                echo "お使いのシステムではPythonが利用できません"
            fi
            if [ -d "Python/__pycache__" ]; then
                rm -fr "Python/__pycache__"
            fi;;
        5 ) ./PHP.php;;
        6 )
            if [ -f /usr/local/bin/lua ]; then
                /usr/local/bin/lua Lua.lua
            else
                echo "お使いのシステムではLuaがインストールされていません"
            fi;;
        7 ) ./Shell.sh;;
        8 )
            javac Java.java
            echo "コンパイルが終了しました。引き続き実行します"
            echo "returnキーを押してください"
            read rtn
            clear
            java Java
            ;;
        9 )
            rustc Rust.rs
            echo "コンパイルが終了しました。引き続き実行します"
            echo "returnキーを押してください"
            read rtn
            clear
            ./Rust
            ;;
        * ) continue;;
    esac
    echo
    echo
    echo "[実行完了しました]"
    echo
    echo "returnキーで戻る"
    read rtn
done
exit