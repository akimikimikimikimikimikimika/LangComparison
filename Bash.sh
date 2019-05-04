#! /usr/local/bin/bash

# Shell Script

<< COMMENT
	複数行のコメント
	"<< コメント名" ~ "コメント名" で挟まれた領域は全てコメント
COMMENT

cd "$(cd $(dirname $0); pwd)"/Bash

printf """

こんにちは。私の名前はBash。
"""

while : ; do
	printf """

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 数学的演算を試す
7. 文字列を試す
8. 文字列フォーマットを試す
9. 正規表現を試す
a. 日付と時刻を試す
d. ファイル操作を試す
e. ファイルパスを試す
f. プロセス系を試す
h. コマンドライン引数を試す

0. 終了


"""
	read action
	printf "\r\n\r\n\r\n"
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
		./Math.sh
	elif [ "$action" = 7 ]; then
		./String.sh
	elif [ "$action" = 8 ]; then
		./Sprintf.sh
	elif [ "$action" = 9 ]; then
		./RegExp.sh
	elif [ "$action" = a ]; then
		./DateTime.sh
	elif [ "$action" = d ]; then
		./File.sh
	elif [ "$action" = e ]; then
		./Path.sh
	elif [ "$action" = f ]; then
		./Process.sh
	elif [ "$action" = h ]; then
		./Arguments.sh "このプログラムを直接実行してみよう。" "ここにあるよ: Shell/Arguments.sh" "" "コマンドラインに以下のように入力して実行します" "" "Shell/Arguments.sh 引数1 引数2…" "" "すると,引数1,引数2…が順に出力されます"
	else
		printf """
指定したアクションは見つかりませんでした

"""
	fi
done

exit 0