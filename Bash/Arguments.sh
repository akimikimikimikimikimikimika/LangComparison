#! /usr/bin/env bash

echo
echo "このファイルを実行するにあたっての引数は以下の通りです:"
echo
echo
args="$@"
echo "${args[2]}"
n=1
for s in "$@" ; do
	echo " $n: ""$s"
	n=$((n+1))
done

printf "\r\n\r\n"