#! /usr/local/bin/php
<?php

$i = function($v){return $v;};

print <<<"Math"

これから数学演算を試します

進数変換
433045 = {$i(base_convert("433045",6,14))} (6進数 → 14進数)
	(2~36進数に変換可能)

dec2bin 138: {$i(   sprintf("%b",138)   )}
dec2oct 138: {$i(   sprintf("%o",138)   )}
dec2hex 138: {$i(   sprintf("%X",138)   )}

dec2bin 138: {$i(   decbin(138)   )}
dec2oct 138: {$i(   decoct(138)   )}
dec2hex 138: {$i(   dechex(138)   )}

bin2dec 1101111101: {$i(   bindec("1101111101")   )}
oct2dec       1575: {$i(   octdec("1575")         )}
hex2dec        37d: {$i(   hexdec("37d")          )}

定数
π = {$i(M_PI)}
e = {$i(M_E)}

符号
abs(+18) = {$i(   abs(+18)   )}
abs(-18) = {$i(   abs(-18)   )}

数学関数
sqrt(3)     = {$i(   sqrt(3)       )}
exp(1.145)  = {$i(   exp(1.145)    )}
log(23.14)  = {$i(   log(23.14)    )}
log10(1385) = {$i(   log10(1385)   )}
sin(π/3)    = {$i(   sin(M_PI/3)   )}
cos(π/3)    = {$i(   cos(M_PI/3)   )}
tan(π/3)    = {$i(   tan(M_PI/3)   )}
asin(1)     = {$i(   asin(1)       )}
acos(0.5)   = {$i(   acos(0.5)     )}
atan(-1)    = {$i(   atan(-1)      )}
atan2(12,5) = {$i(   atan2(12,5)   )}
hypot(12,5) = {$i(   hypot(12,5)   )} = (12²+5²) ^ ½
sinh(1.862) = {$i(   sinh(1.862)   )}
cosh(1.811) = {$i(   cosh(1.811)   )}
tanh(0.325) = {$i(   tanh(0.325)   )}

角度変換
rad2deg(1)   = {$i(   rad2deg(1)     )}
deg2rad(540) = {$i(   deg2rad(540)   )}

乱数
rand()       = {$i(   rand()         )} (0≦x≦getrandmax())
getrandmax() = {$i(   getrandmax()   )} (乱数範囲の最大値)

random_int() = {$i(   random_int(PHP_INT_MIN,PHP_INT_MAX)   )}

Math;
/*
	random_int() について

	• 暗号学的にrand()よりも安全な乱数を生成する
	• m≧PHP_INT_MIN, M≦PHP_INT_MAX として, random_int(m,M) と指定すると, m≤x≤M の範囲の整数を生成する
*/
print <<<"Math"

端数処理
floor(-3.14) = {$i(   floor(-3.14)   )} (小さい方の整数へ)
 ceil(-3.14) = {$i(    ceil(-3.14)   )} (大きい方の整数へ)
round(-3.14) = {$i(   round(-3.14)   )}
 (int)-3.14  = {$i(    (int)-3.14    )} (キャストは0に近い方へ)
Math;

print "\r\n\r\n";

?>