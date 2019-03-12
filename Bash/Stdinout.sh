#! /usr/local/bin/bash

echo "こんにちは。私はシェルスクリプトです。"
echo "あなたのことを教えてください"
read -p "内容" aboutYou
echo "あなたは""$aboutYou""ですね。わかりました。"
echo
echo "これから幾つかの出力の仕方を披露しますね。"
echo "後ろに改行を付けます"
printf "後ろに改行を付けません。"
echo -e "このように\r\n手動で改行することもできます" # -eオプションにより,\nがエスケープ文字として認識される
echo "それから..."
echo "こんな出力も可能です。"
echo "たまにはエラーも出したくなります">&2
echo 入力してみて
read
echo 以上です

echo
echo