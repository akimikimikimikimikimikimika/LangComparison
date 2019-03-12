#! /usr/local/bin/bash

# Shell Script

<< COMMENT
	複数行のコメント
	"<< コメント名" ~ "コメント名" で挟まれた領域は全てコメント
COMMENT

cd "$(cd $(dirname $0); pwd)"/Bash

echo
echo

echo "こんにちは。私はシェルスクリプト。"
while : ; do
	echo
	echo
	echo "何がしたい?"
	echo
	echo "1. 標準入出力を試す"
	echo "2. 色々な値を試す"
	echo "3. 演算子を試す"
	echo "4. 条件分岐を試す"
	echo "5. 繰り返しを試す"
	echo "6. 正規表現を試す"
	echo "7. ファイル操作を試す"
	echo "8. ファイルパスを試す"
	echo "9. コマンドライン引数を試す"
	echo
	echo "0. 終了"
	echo
	read action
	echo
	echo
	echo
	if [ "$action" = 0 ]; then
		break
	elif [ "$action" = 1 ]; then
		./Stdinout.sh
	elif [ "$action" = 2 ]; then
		./Values.sh
	elif [ "$action" = 3 ]; then
		./Operators.sh
	elif [ "$action" = 4 ]; then
		./Condition.sh
	elif [ "$action" = 5 ]; then
		./Loop.sh
	elif [ "$action" = 6 ]; then
		./RegExp.sh
	elif [ "$action" = 7 ]; then
		./File.sh
	elif [ "$action" = 8 ]; then
		./Path.sh
	elif [ "$action" = 9 ]; then
		./Arguments.sh "このプログラムを直接実行してみよう。" "ここにあるよ: Shell/Arguments.sh" "" "コマンドラインに以下のように入力して実行します" "" "Shell/Arguments.sh 引数1 引数2…" "" "すると,引数1,引数2…が順に出力されます"
	else
		echo "指定したアクションは見つかりませんでした"
	fi
done

exit 0