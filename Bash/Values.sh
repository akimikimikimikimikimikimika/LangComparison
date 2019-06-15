#! /usr/bin/env bash

# 文字列
string="シ"ェ"ル" # 空白を含む文字列などは必ず"や'で囲む。
lines="""

First line
Second line
Third line
"""
# 配列 (declareしなくても認識する)
declare -a array=(1 second 3 3.14)
array2=(1 second 3 3.14)
# 連想配列 (declareしないと認識しない)
declare -A hash=(
	[a]=1
	[b]=second
	[c]=3
	[d]=3.14
)
# 関数
cube(){
	local val=$1
	echo $((val*val*val))
}
# zshでは以下のような無名関数が扱えたりする
# func=(){
# 	local val=$1
# 	echo $((val*val))
# }

echo """
色々な値を試します

文字列: $string
   長さ: ${#string}
文字列2:
$lines
配列:
   ${array[@]}
   2番目: ${array[2]}
   大きさ: ${#array[@]}
配列2:
   ${array2[@]}
   2番目: ${array2[2]}
   大きさ: ${#array2[@]}
連想配列:
   ${hash[@]}
   b= ${hash[b]}
   大きさ: ${#hash[@]}
"""

printf "\r\n\r\n"