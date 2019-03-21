#! /usr/local/bin/bash

echo """
こんにちは。私はシェルスクリプトです。
あなたのことを教えてください
"""

read -p "あなたは..." aboutYou

echo """
あなたは $aboutYou ですね。わかりました。

これから幾つかの出力の仕方を披露しますね。
"""
echo "後ろに改行を付けます"
printf "後ろに改行を付けません。"
echo -n "後ろに改行を付けません。" # -nオプションにより,末尾に改行を挿入しなくなる
echo -e "このように\r\n手動で改行することもできます" # -eオプションにより,\nがエスケープ文字として認識される
echo "それから..."
echo "たまにはエラーも出したくなります">&2
echo "入力してみて"
read
echo "以上です"

printf "\r\n\r\n"