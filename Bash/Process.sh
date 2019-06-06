#! /usr/local/bin/bash

echo """
プロセスID: $$
このコードの行番号: $LINENO

OS:           `uname -s`
バージョン:   `uname -v`
リリース:     `uname -r`
プロセッサ:   `uname -p`
ハードウェア: `uname -m`
ノード名:     `uname -n`

では,3.14秒ほど居眠りします


"""
sleep 3.14