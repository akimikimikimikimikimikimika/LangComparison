#! /usr/bin/env bash

echo """

これから数学演算を試します

進数変換　(n進数 → 10進数)
dec          = $((0xdec)) (16進数 → 10進数)
475          = $((0475))  (8進数 → 10進数)
Shell_Script = $((64#Shell_Script)) (64進数 → 10進数)"""
<< 括弧書きでの10進数への変換

	計算のできる $((  )) 内に入れることで,最大で64進数までの数値を10進数に変換できる

	0x(hex) : 16進数
	0(oct)  : 8進数
	r#(***) : r進数 (r=2~64)

	64進数の数字
		0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@_

括弧書きでの10進数への変換

echo """
進数変換 (printf)
hex2dec: 0xdec = `printf "%d" 0xdec`
oct2dec: 0475  = `printf "%d" 0475`
dec2hex: 3564  = `printf "%x" 3564`
dec2oct: 317   = `printf "%o" 317`"""
<< printfでの変換

	printfでは置換する際に進数を計算する
		%o :  8進数 (Oct)
		%d : 10進数 (Dec)
		%x : 16進数 (heX)

printfでの変換

echo """
進数変換 (bc)
3564       = `echo "obase=16;ibase=10;3564" | bc`  (10進数 → 16進数)
1011110110 = `echo "obase=10;ibase=2;1011110110" | bc`  (2進数 → 10進数)
433045     = `echo "obase=14;ibase=6;433045" | bc`  (6進数 → 14進数)"""
<< bcコマンド内での進数変換

	obaseに指定する値はその時点でのibaseの進数に依るので,obaseを先に定義してからibaseを定義した方が良い
	例えば, ibase=16;obase=10 とすれば, obaseは16進数で"10",すなわちobaseを16に指定してしまう
	16進数は大文字にしなければならない

bcコマンド内での進数変換

pi=`echo "a(1)*4" | bc -l`
e=`echo "e(1)" | bc -l`

echo """
定数 (bc)
π = $pi
e = $e

数学関数 (bc)
sqrt(3)    = `echo "sqrt(3)" | bc -l`
exp(1.145) = `echo "e(1.145)" | bc -l`
log(23.14) = `echo "l(23.14)" | bc -l`
sin(π/3)   = `echo "s($pi/3)" | bc -l`
cos(π/3)   = `echo "c($pi/3)" | bc -l`
atan(1)    = `echo "a(1)" | bc -l`

乱数
\$RANDOM = $RANDOM
"""
# $RANDOM は実行する度に違う値が返される変数である。bashなどで対応している

printf "\r\n\r\n"