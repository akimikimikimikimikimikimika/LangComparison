#! /usr/local/bin/bash

echo "ホームディレクトリ:	   ""$HOME"
echo "カレントディレクトリ:	 ""`pwd`"
echo

echo "このファイルのフルパス:   ""$(cd $(dirname $0); pwd)"/"`basename "$0"`"
echo "このファイルの実行パス:   ""$0"
echo "このファイルの名前:	   ""`basename "$0"`"
echo "このファイルのある場所:   ""$(cd $(dirname $0); pwd)"

echo
echo