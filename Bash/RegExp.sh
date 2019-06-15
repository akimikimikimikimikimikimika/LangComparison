#! /usr/bin/env bash

echo
echo これから正規表現を試します
echo

text="The Quick Brown Fox Jumps Over The Lazy Dog"
echo "$text → "

echo
echo 検索
found="`echo "$text" | grep -oE l+`"
echo "$found"


echo
echo マッチの確認
shopt -s nocasematch # ignorecase をオンにする設定
if [[ $text =~ "fox jumps" ]]; then
	echo "狐が飛んでいます"
else
	echo "狐は飛んでいません"
fi
if [[ $text =~ "dog jumps" ]]; then
	echo "犬が飛んでいます"
else
	echo "犬は飛んでいません"
fi
shopt -u nocasematch # ignorecase をオフにする設定

echo
echo 置換
replaced="`echo $text | sed -Ee "s/<([a-z])>/{\1}/"`"
echo "gフラグなし:"
echo "$replaced"
replaced="`echo $text | sed -Ee "s/<([a-z])>/{\1}/g"`"
echo "gフラグあり:"
echo "$replaced"

<< 置換の説明
	• GNU版sedの場合は, sed -i "s/before/after/g" filename の型で,ファイルを直接書き換えできる。標準出力されない
	• 2つ以上連続で置換を行う場合は, sed -e s///g -e s///g ... とする
	• s/before/after/g の型だけでなく,スラッシュ以外の記号でもよいみたいで,例えば, s@before@after@g の型でもよい
	• 正規表現を使わないのであれば...
	  	置換: tr -c before after
	  	削除: tr -d before
	  の型で操作することもできる
置換の説明

echo
echo 分割と結合
IFS=" " # 区切りを定めるグローバル変数
array=($text)
arranged="$(IFS="_";echo "${array[*]}")"
echo "$arranged"

printf "\r\n\r\n"