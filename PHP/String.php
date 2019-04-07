#! /usr/local/bin/php
<?php

$i = function($v){return $v;};

print <<<"String"

これから文字列を試します

"PHP STRING demo" →
strtoupper() = "{$i(   strtoupper("PHP STRING demo")   )}"
strtolower() = "{$i(   strtolower("PHP STRING demo")   )}"
ucfirst() = "{$i(   ucfirst("PHP STRING demo")   )}"
lcfirst() = "{$i(   lcfirst("PHP STRING demo")   )}"
ucwords() = "{$i(   ucwords("PHP STRING demo")   )}"

"align" →
str_pad(...,6,"-",STR_PAD_LEFT)  = "{$i(   str_pad("align",11,"-",STR_PAD_LEFT)   )}"
str_pad(...,6,"-",STR_PAD_RIGHT) = "{$i(   str_pad("align",11,"-",STR_PAD_RIGHT)   )}"
str_pad(...,3,"-",STR_PAD_BOTH)  = "{$i(   str_pad("align",11,"-",STR_PAD_BOTH)   )}"

"   redundant   " →
trim("   redundant   ")  = "{$i(   trim("   redundant   ")   )}"
ltrim("   redundant   ") = "{$i(   ltrim("   redundant   ")   )}"
rtrim("   redundant   ") = "{$i(   rtrim("   redundant   ")   )}"

strrev("strings") = "{$i(   strrev("strings")   )}"

strpos("abracadabra","acad") = {$i(   strpos("abracadabra","acad")   )} (先頭から位置検索)
strrpos("abracadabra","acad") = {$i(   strrpos("abracadabra","acad")   )} (末尾から位置検索)

substr("string",1,2)    = "{$i(   substr("strings",1,2)   )}" (pick 2 letters from 1)
mb_substr("もじれつ",1,2) = "{$i(   mb_substr("もじれつ",1,2)   )}" (pick 2 letters from 1)

str_repeat("abc",3) = "{$i(   str_repeat("abc",3)   )}"

mb_convert_kana("ＡＢＣ","r") = "{$i(   mb_convert_kana("ABC","r")   )}"
mb_convert_kana("ABC","R")    = "{$i(   mb_convert_kana("ABC","R")   )}"
mb_convert_kana("１２３","n") = "{$i(   mb_convert_kana("123","n")   )}"
mb_convert_kana("123","N")    = "{$i(   mb_convert_kana("123","N")   /* r+n = a */)}"
mb_convert_kana("イロハ","k") = "{$i(   mb_convert_kana("イロハ","k")   )}"
mb_convert_kana("ｲﾛﾊ","K")    = "{$i(   mb_convert_kana("ｲﾛﾊ","K")   )}"
mb_convert_kana("いろは","h") = "{$i(   mb_convert_kana("いろは","h")   )}"
mb_convert_kana("ｲﾛﾊ","H")    = "{$i(   mb_convert_kana("ｲﾛﾊ","H")   )}"
mb_convert_kana("イロハ","c") = "{$i(   mb_convert_kana("イロハ","c")   )}"
mb_convert_kana("いろは","C") = "{$i(   mb_convert_kana("いろは","C")   )}"
mb_convert_kana("ﾊﾞｼﾞﾙ","KV") = "{$i(   mb_convert_kana("ﾊﾞｼﾞﾙ","KV")   )}"

mb_encode_mimeheader("いろは") = "{$i(   mb_encode_mimeheader("いろは")   )}"

str_rot13("string") = "{$i(   str_rot13("string")   )}"
md5("string")       = "{$i(   md5("string")   )}"
sha1("string")      = "{$i(   sha1("string")   )}"

String;

print "\r\n\r\n";

?>