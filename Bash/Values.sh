#! /usr/local/bin/bash

# 文字列
str="シ"ェ"ル" # 空白を含む文字列などは必ず"や'で囲む。
str2="""

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

echo
echo 色々な値を試します
echo
echo 文字列:"$str"
echo "   長さ:"${#str}
echo 文字列2:"$str2"
echo 関数を実行:"6 → "`cube 6`
echo 配列:"${array[@]}" # 全要素表示
echo "   2番目:""${array[2]}"
echo "   大きさ:""${#array[@]}"
echo 配列2:"${array2[@]}" # 全要素表示
echo "   2番目:""${array2[2]}"
echo "   大きさ:""${#array2[@]}"
echo 連想配列:"${hash[@]}" # 全要素表示
echo "   b=""${hash[b]}"
echo "   大きさ:""${#hash[@]}"

echo
echo