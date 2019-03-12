#! /usr/local/bin/bash

echo
echo これからループ処理を試します
echo

echo
echo "for (( n=0;n<3;n++ ));do…done"
for (( n=0;n<3;n++ ))
do
	echo "n="$n"のループ"
done
echo
echo "for n in {0..2};do…done"
for n in {0..2}
do
	echo "n="$n"のループ"
done

echo
echo "for n in {0..4..2};do…done (偶数回のみ実行)"
for n in {0..4..2}
do
	echo "n="$n"のループ"
done

echo
echo "for c in \${array[@]};do…done"
cs=("壱" "弐" "参")
for c in "${cs[@]}"
do
	echo "c=\""$c"\"のループ"
done

echo
echo "while [~] ;do…done"
str=""
while [ ${#str} -lt 6 ]
do
	str="$str"*
	echo "$str"
done

echo
echo "until [~] ;do…done"
str=""
until [ ${#str} -eq 6 ]
do
	str="$str"*
	echo "$str"
done

echo
echo