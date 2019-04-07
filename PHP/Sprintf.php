#! /usr/local/bin/php
<?php

$i = function($v){return $v;};

print <<<"Sprintf"

これから文字列フォーマットを試します

整数
sprintf("%u",255) = "{$i(   sprintf("%u",255)   )}" (符号なし整数)
sprintf("%d",255) = "{$i(   sprintf("%d",255)   )}" (DEC)
sprintf("%b",255) = "{$i(   sprintf("%b",255)   )}" (BIN)
sprintf("%o",255) = "{$i(   sprintf("%o",255)   )}" (OCT)
sprintf("%x",255) = "{$i(   sprintf("%x",255)   )}" (HEX)
sprintf("%X",255) = "{$i(   sprintf("%X",255)   )}" (HEX)

実数
sprintf("%d",0.018) = "{$i(   sprintf("%d",0.018)   )}" (整数化)
sprintf("%f",0.018) = "{$i(   sprintf("%f",0.018)   )}"
sprintf("%g",0.018) = "{$i(   sprintf("%g",0.018)   )}"
sprintf("%e",0.018) = "{$i(   sprintf("%e",0.018)   )}"
sprintf("%E",0.018) = "{$i(   sprintf("%E",0.018)   )}"

文字
sprintf("%c",115)   = "{$i(     sprintf("%c",115)     )}"
sprintf("%s","abc") = "{$i(   sprintf("%s","abc")   )}"

基数の表記
sprintf("%#b",255) = "{$i(   sprintf("%#b",255)   )}"
sprintf("%#o",255) = "{$i(   sprintf("%#o",255)   )}"
sprintf("%#x",255) = "{$i(   sprintf("%#x",255)   )}"
sprintf("%#X",255) = "{$i(   sprintf("%#X",255)   )}"

正負の表記
sprintf( "%d",+18) = "{$i(   sprintf( "%d",+18)   )}"
sprintf("%+d",+18) = "{$i(   sprintf("%+d",+18)   )}"
sprintf( "%d",-18) = "{$i(   sprintf( "%d",-18)   )}"
sprintf("%+d",-18) = "{$i(   sprintf("%+d",-18)   )}"

精度
sprintf("%.3d",18)    = "{$i(     sprintf("%.3d",18)      )}" (u,d,b,o,x: 整数桁数)
sprintf("%.3f",0.018) = "{$i(     sprintf("%.3f",0.018)   )}" (f: 小数点以下の桁数)
sprintf("%.3e",0.018) = "{$i(     sprintf("%.3e",0.018)   )}" (e,g: 有効桁数-1)
sprintf("%.2s","abc") = "{$i(   sprintf("%.2s","abc")   )}" (s: 文字数)

幅
sprintf("%10d",18)     = "{$i(     sprintf("%10d",18)      )}"
sprintf("%10f",0.018)  = "{$i(     sprintf("%10f",0.018)   )}"
sprintf("%10e",0.018)  = "{$i(     sprintf("%10e",0.018)   )}"
sprintf("%10s","ab")   = "{$i(   sprintf("%10s","ab")    )}"

0埋め
sprintf("%010d",18)    = "{$i(     sprintf("%010d",18)      )}"
sprintf("%010f",0.018) = "{$i(     sprintf("%010f",0.018)   )}"
sprintf("%010e",0.018) = "{$i(     sprintf("%010e",0.018)   )}"

左寄せ
sprintf( "%10d",18) = "{$i(   sprintf("%10d",18)    )}"
sprintf("%-10d",18) = "{$i(   sprintf("%-10d",18)   )}"

組合せ
sprintf("%d年%d月%d日",2007,7,14) = "{$i(   sprintf("%d年%d月%d日",2007,7,14)   )}"
sprintf("x = %+08.2f",0.375)      = "{$i(   sprintf("x = %+08.2f",0.375)      )}"

引数並び
sprintf('%3\$d年%1\$d月%2\$d日',7,14,2007) = "{$i(   sprintf('%3$d年%1$d月%2$d日',7,14,2007)   )}"
sprintf('%2\$sは%2\$s。%1\$sは%1\$s。',"あれ","これ") = "{$i(   sprintf('%2$sは%2$s。%1$sは%1$s。',"あれ","これ")   )}"

Sprintf;

print "\r\n\r\n";

?>