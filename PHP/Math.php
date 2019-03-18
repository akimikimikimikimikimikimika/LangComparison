#! /usr/local/bin/php
<?php

$i = function($v){return $v;};

print "\r\nこれから数学演算を試します\r\n\r\n";

print "\r\n進数変換\r\n";

print "433045 = {$i(base_convert('433045',6,14))} (6進数 → 14進数)\r\n\r\n";
	# 2~36進数

print "dec2bin 138: {$i(   sprintf('%b',138)   )}\r\n";
print "dec2oct 138: {$i(   sprintf('%o',138)   )}\r\n";
print "dec2hex 138: {$i(   sprintf('%X',138)   )}\r\n\r\n";

print "dec2bin 138: {$i(   decbin(138)   )}\r\n";
print "dec2oct 138: {$i(   decoct(138)   )}\r\n";
print "dec2hex 138: {$i(   dechex(138)   )}\r\n\r\n";

print "bin2dec 1101111101: {$i(   bindec('1101111101')   )}\r\n";
print "oct2dec       1575: {$i(   octdec('1575')         )}\r\n";
print "hex2dec        37d: {$i(   hexdec('37d')          )}\r\n\r\n";

print "\r\n定数\r\n";
print "π = {$i(M_PI)}\r\n";
print "e = {$i(M_E)}\r\n";

print "\r\n数学関数\r\n";
print "   abs(+18) = {$i(   abs(+18)      )}\r\n";
print "   abs(-18) = {$i(   abs(-18)      )}\r\n";
print "    sqrt(3) = {$i(   sqrt(3)       )}\r\n";
print " exp(1.145) = {$i(   exp(1.145)    )}\r\n";
print " log(23.14) = {$i(   log(23.14)    )}\r\n";
print "log10(1385) = {$i(   log10(1385)   )}\r\n";
print "   sin(π/3) = {$i(   sin(M_PI/3)   )}\r\n";
print "   cos(π/3) = {$i(   cos(M_PI/3)   )}\r\n";
print "   tan(π/3) = {$i(   tan(M_PI/3)   )}\r\n";
print "    asin(1) = {$i(   asin(1)       )}\r\n";
print "  acos(0.5) = {$i(   acos(0.5)     )}\r\n";
print "   atan(-1) = {$i(   atan(-1)      )}\r\n";
print "atan2(12,5) = {$i(   atan2(12,5)   )}\r\n"; # atan2(y,x)
print "hypot(12,5) = {$i(   hypot(12,5)   )}\r\n";
print "sinh(1.862) = {$i(   sinh(1.862)   )}\r\n";
print "cosh(1.811) = {$i(   cosh(1.811)   )}\r\n";
print "tanh(0.325) = {$i(   sinh(0.325)   )}\r\n";

print "\r\n角度変換\r\n";
print "rad2deg(1)   = {$i(   rad2deg(1)     )}\r\n";
print "deg2rad(540) = {$i(   deg2rad(540)   )}\r\n";

print "\r\n乱数\r\n";
print "rand()       = {$i(   rand()         )}\r\n";  # 0≦x≦getrandmax()
print "getrandmax() = {$i(   getrandmax()   )}\r\n";  # 乱数範囲の最大値
	# rand(m,M) により,最小値m,最大値Mの乱数が生成できる
	# m,Mを指定しない場合は,m=0,M=getrandmax()になる
print "random_int() = {$i(   random_int(PHP_INT_MIN,PHP_INT_MAX)   )}\r\n\r\n";
	# 暗号学的にrand()よりも安全な乱数
	# random_int(m,M) で m≧PHP_INT_MIN, M≦PHP_INT_MAX

print "\r\n端数処理\r\n";
print "floor(-3.14) = {$i(   floor(-3.14)   )}\r\n"; # 小さい方の整数へ
print " ceil(-3.14) = {$i(    ceil(-3.14)   )}\r\n"; # 大きい方の整数へ
print "round(-3.14) = {$i(   round(-3.14)   )}\r\n";
print " (int)-3.14  = {$i(    (int)-3.14    )}\r\n"; # キャストは0に近い方へ

print "\r\n\r\n";

?>