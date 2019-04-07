#! /usr/local/bin/bash

echo """

これから文字列フォーマットを試します

整数
printf \"%u\" 255 = \"""`   printf "%u" 255   `""\" (符号なし整数)
printf \"%d\" 255 = \"""`   printf "%d" 255   `""\" (DEC)
printf \"%o\" 255 = \"""`   printf "%o" 255   `""\" (OCT)
printf \"%x\" 255 = \"""`   printf "%x" 255   `""\" (HEX)
printf \"%X\" 255 = \"""`   printf "%X" 255   `""\" (HEX)

実数
printf \"%d\" 0.018 = \"""`   printf "%d" 0.018   `""\" (整数化)
printf \"%f\" 0.018 = \"""`   printf "%f" 0.018   `""\"
printf \"%g\" 0.018 = \"""`   printf "%g" 0.018   `""\"
printf \"%e\" 0.018 = \"""`   printf "%e" 0.018   `""\"
printf \"%E\" 0.018 = \"""`   printf "%E" 0.018   `""\"

文字
printf \"%c\" 115   = \"""`     printf "%c" 115     `""\"
printf \"%s\" \"abc\" = \"""`   printf "%s" "abc"   `""\"

基数の表記
printf \"%#o\" 255 = \"""`   printf "%#o" 255   `""\"
printf \"%#x\" 255 = \"""`   printf "%#x" 255   `""\"
printf \"%#X\" 255 = \"""`   printf "%#X" 255   `""\"

正負の表記
printf  \"%d\" +18 = \"""`   printf  "%d" +18   `""\"
printf \"%+d\" +18 = \"""`   printf "%+d" +18   `""\"
printf \"% d\" +18 = \"""`   printf "% d" +18   `""\"
printf  \"%d\" -18 = \"""`   printf  "%d" -18   `""\"
printf \"%+d\" -18 = \"""`   printf "%+d" -18   `""\"
printf \"% d\" -18 = \"""`   printf "% d" -18   `""\"

精度
printf \"%.3d\" 18    = \"""`     printf "%.3d" 18      `""\" (u d b o x: 整数桁数)
printf \"%.3f\" 0.018 = \"""`     printf "%.3f" 0.018   `""\" (f: 小数点以下の桁数)
printf \"%.3e\" 0.018 = \"""`     printf "%.3e" 0.018   `""\" (e g: 有効桁数-1)
printf \"%.2s\" \"abc\" = \"""`   printf "%.2s" "abc"   `""\" (s: 文字数)

幅
printf \"%10d\" 18     = \"""`     printf "%10d" 18      `""\"
printf \"%10f\" 0.018  = \"""`     printf "%10f" 0.018   `""\"
printf \"%10e\" 0.018  = \"""`     printf "%10e" 0.018   `""\"
printf \"%10s\" \"ab\"   = \"""`   printf "%10s" "ab"    `""\"

0埋め
printf \"%010d\" 18    = \"""`     printf "%010d" 18      `""\"
printf \"%010f\" 0.018 = \"""`     printf "%010f" 0.018   `""\"
printf \"%010e\" 0.018 = \"""`     printf "%010e" 0.018   `""\"

左寄せ
printf  \"%10d\" 18 = \"""`   printf "%10d" 18    `""\"
printf \"%-10d\" 18 = \"""`   printf "%-10d" 18   `""\"

組合せ
printf \"%d年%d月%d日\" 2007 7 14 = \"""`   printf "%d年%d月%d日" 2007 7 14   `""\"
printf \"x = %+08.2f\" 0.375      = \"""`   printf "x = %+08.2f" 0.375      `""\"

"""

printf "\r\n\r\n"