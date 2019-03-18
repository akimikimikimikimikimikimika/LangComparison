#! /usr/local/bin/bash

echo
echo これから数学演算を試します
echo
echo

echo "n進数 → 10進数"
echo "dec          = "$((0xdec))" (16進数 → 10進数)"
echo "475          = "$((0475))"  (8進数 → 10進数)"
echo "Shell_Script = "$((64#Shell_Script))" (64進数 → 10進数)"
echo

<< 括弧書きでの10進数への変換

	計算のできる $((  )) 内に入れることで,最大で64進数までの数値を10進数に変換できる

	0x(hex) : 16進数
	0(oct)  : 8進数
	r#(***) : r進数 (r=2~64)

	64進数の数字
		0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@_

括弧書きでの10進数への変換

echo "進数変換 (printf)"
echo "0xdec = "`printf "%d" 0xdec`" (16進数 → 10進数)"
echo "0475  = "`printf "%d" 0475`"  (8進数 → 10進数)"
echo "3564  = "`printf "%x" 3564`" (10進数 → 16進数)"
echo "317   = "`printf "%o" 317`"  (10進数 → 8進数)"
echo

<< printfでの変換

	printfでは置換する際に進数を計算する
		%o :  8進数 (Oct)
		%d : 10進数 (Dec)
		%x : 16進数 (heX)

printfでの変換

echo "進数変換 (bc)"
echo "3564       = "`echo "obase=16;ibase=10;3564" | bc`"  (10進数 → 16進数)"
echo "1011110110 = "`echo "obase=10;ibase=2;1011110110" | bc`"  (2進数 → 10進数)"
echo "433045     = "`echo "obase=14;ibase=6;433045" | bc`" (6進数 → 14進数)"
echo
# obaseに指定する値はその時点でのibaseの進数に依るので,obaseを先に定義してからibaseを定義した方が良い
# 例えば, ibase=16;obase=10 とすれば, obaseは16進数で"10",すなわちobaseを16に指定してしまう
# 16進数は大文字にしなければならない

pi=`echo "a(1)*4" | bc -l`
e=`echo "e(1)" | bc -l`

echo "定数 (bc)"
echo "π = "$pi
echo "e = "$e
echo

echo "数学関数 (bc)"
echo "exp(1.145) = "`echo "e(1.145)" | bc -l`
echo "log(23.14) = "`echo "l(23.14)" | bc -l`
echo "sin(π/3)   = "`echo "s($pi/3)" | bc -l`
echo "cos(π/3)   = "`echo "c($pi/3)" | bc -l`
echo "atan(1)    = "`echo "a(1)" | bc -l`
echo "sqrt(3)    = "`echo "sqrt(3)" | bc -l`

echo
echo