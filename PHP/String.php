#! /usr/local/bin/php
<?php

$i = function($v){return $v;};

print <<<"String"

これから文字列を試します

長さ
"ピーエイチピー" →
strlen(...)          = {$i(   strlen("ピーエイチピー")            )}
mb_strlen(...)       = {$i(   mb_strlen("ピーエイチピー")         )}
iconv_strlen(...)    = {$i(   iconv_strlen("ピーエイチピー")      )}
grapheme_strlen(...) = {$i(   grapheme_strlen("ピーエイチピー")   )}

大文字/小文字の切替
"PHP STRING demo" →
strtoupper(...) = "{$i(   strtoupper("PHP STRING demo")   )}"
strtolower(...) = "{$i(   strtolower("PHP STRING demo")   )}"
ucfirst(...) = "{$i(   ucfirst("PHP STRING demo")   )}"
lcfirst(...) = "{$i(   lcfirst("PHP STRING demo")   )}"
ucwords(...) = "{$i(   ucwords("PHP STRING demo")   )}"

区切り文字列で区切る
\"abracadabra\" →
explode(...,"br") = [{$i(implode(",",   explode("abracadabra","br")   ))}]
strtok(...,"br")  = [{$i(implode(",",   strtok("abracadabra","br")    ))}]

文字列を揃える
"align" →
str_pad(...,6,"-",STR_PAD_LEFT)  = "{$i(   str_pad("align",11,"-",STR_PAD_LEFT)   )}"
str_pad(...,6,"-",STR_PAD_RIGHT) = "{$i(   str_pad("align",11,"-",STR_PAD_RIGHT)   )}"
str_pad(...,3,"-",STR_PAD_BOTH)  = "{$i(   str_pad("align",11,"-",STR_PAD_BOTH)   )}"

前後の空白の除去
"   redundant   " →
trim(...)  = "{$i(   trim("   redundant   ")   )}"
ltrim(...) = "{$i(   ltrim("   redundant   ")   )}"
rtrim(...) = "{$i(   rtrim("   redundant   ")   )}"

指定した文字を含む前後の文字列の除去
"ええ すごいわ ええ" →
trim(...," え")  = "{$i(   trim("ええ すごいわ ええ"," え")    )}"
ltrim(...," え") = "{$i(   ltrim("ええ すごいわ ええ"," え")   )}"
rtrim(...," え") = "{$i(   rtrim("ええ すごいわ ええ"," え")   )}"

文字列の反転
strrev("strings") = "{$i(   strrev("strings")   )}"

文字列の位置を検索
strpos("abracadabra","acad") = {$i(   strpos("abracadabra","acad")   )} (先頭から位置検索)
strrpos("abracadabra","acad") = {$i(   strrpos("abracadabra","acad")   )} (末尾から位置検索)

部分文字列の取り出し
substr("string",1,2)    = "{$i(   substr("strings",1,2)   )}" (pick 2 letters from 1)
mb_substr("もじれつ",1,2) = "{$i(   mb_substr("もじれつ",1,2)   )}" (pick 2 letters from 1)

文字列の繰り返し
str_repeat("abc",3) = "{$i(   str_repeat("abc",3)   )}"

カナ変換
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

文字列の変換
str_rot13("string") = "{$i(   str_rot13("string")   )}"
md5("string")       = "{$i(   md5("string")   )}"
sha1("string")      = "{$i(   sha1("string")   )}"

String;

print "\r\n\r\n";

?>