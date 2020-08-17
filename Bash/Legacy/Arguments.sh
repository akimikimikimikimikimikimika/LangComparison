#! /usr/bin/env bash

echo
echo "このファイルを実行するにあたっての引数は以下の通りです:"
echo
echo
n=1
for s in "$@" ; do
	echo " $n: ""$s"
	n=$((n+1))
done

<<"コマンドライン引数"

$1 $2 $3 etc : n番目の引数 ($0はコマンド名)
$@ : 全引数の配列
$# : 引数の数

コマンドライン引数

printf "\r\n\r\n"