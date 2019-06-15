#! /usr/bin/env bash

echo
echo これからスレッドを試します
echo

# 9個のスレッドそれぞれで6回のループ

# スレッドの実行内容を定義
mtAction() {
    local m
    local n
    m=$1
    for n in {1..6} ; do
        echo "|($m,$n)| = "`echo "scale=8;sqrt($m*$m+$n*$n)" | bc -l`
    done
}

echo "スレッドを起動します"
array=() # スレッドのプロセスIDを格納する配列
for m in {1..9} ; do
    mtAction $m & # スレッドを起動 (実行コマンドの後に & を付加することで並列で実行される)
    array=("${array[@]}" "$!") # スレッドのプロセスIDを配列に格納する
done
echo "スレッドの終了を待ちます"
for p in ${array[@]} ; do
    wait $p # プロセスIDが$pのスレッドの終了を待つ
done
echo "スレッドは終了しました"

# 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
# このコードを実行する毎に,順番は変化する

printf "\r\n\r\n"