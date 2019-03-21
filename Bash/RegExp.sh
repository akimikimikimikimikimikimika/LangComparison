#! /usr/local/bin/bash

echo
echo これから正規表現を試します
echo

echo
echo "検索"
echo
text="IllUsTrAtE"
find="`echo "$text" | grep -oE l+`"
echo "$text → $find"
echo

echo
echo "置換"
echo
text="<a> <b> <c>"
replace="`echo $text | sed -Ee "s/<([a-z])>/{\1}/"`"
echo "gフラグなし: $text"" → ""$replace"
text="<a> <b> <c>"
replace="`echo $text | sed -Ee "s/<([a-z])>/{\1}/g"`"
echo "gフラグ付き: $text"" → ""$replace"

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
echo
text="a-b-c"
printf "$text"" → "
IFS="-"
arr=($text)
text="$(IFS=".";echo "${arr[*]}")"
echo "$text"

echo
echo マッチの確認
echo
test1="qUiVeR"
test2="ShIvEr"
shopt -s nocasematch # ignorecase をオンにする設定
if [[ $test1 =~ ^qu ]]; then
	echo "$test1"" はquで始まります"
else
	echo "$test1"" はquで始まりません"
fi
shopt -u nocasematch # ignorecase をオフにする設定

printf "\r\n\r\n"