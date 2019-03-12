#! /usr/local/bin/php
<?php

$i = function($v){return $v;};

print "\r\nこれから演算子を試します\r\n";

print "\r\n算術演算子\r\n";
print "24  + 5 = {$i(   24 +5   )}\r\n";
print "24  - 5 = {$i(   24 -5   )}\r\n";
print "24  * 5 = {$i(   24 *5   )}\r\n";
print "24  / 5 = {$i(   24 /5   )}\r\n";
print "24  % 5 = {$i(   24 %5   )}\r\n";
print "24 ** 5 = {$i(   24**5   )}\r\n";

print "\r\n数値比較演算子\r\n";
print "24  > 5 = {$i(   24 >5   )}\r\n";
print "24 >= 5 = {$i(   24>=5   )}\r\n";
print "24  < 5 = {$i(   24 <5   )}\r\n";
print "24 <= 5 = {$i(   24<=5   )}\r\n";
print "24 == 5 = {$i(   24==5   )}\r\n"; # Equal
print "24 != 5 = {$i(   24!=5   )}\r\n"; # Not equal
print "24<=> 5 = {$i(   24<=> 5   )}\r\n";
print "24<=>24 = {$i(   24<=>24   )}\r\n";
print "24<=> 5 = {$i(    5<=>24   )}\r\n";

print "\r\n論理演算子\r\n";
print "1 and 0 = {$i(   1 and 0   )}\r\n";
print "1  && 0 = {$i(   1  && 0   )}\r\n";
print "1  or 0 = {$i(   1  or 0   )}\r\n";
print "1  || 0 = {$i(   1  || 0   )}\r\n";
print "    ! 0 = {$i(       ! 0   )}\r\n";

print "\r\n三項演算子\r\n";
print '1 ? "yes" : "no" = "'.(   1 ? "yes" : "no"   )."\"\r\n";
print '0 ? "yes" : "no" = "'.(   0 ? "yes" : "no"   )."\"\r\n";
# 使い方: <条件>?<真の場合の値>:<偽の場合の値>

print "\r\n文字列演算子\r\n";
print '"abc"."def" = "'.(   "abc"."def"   )."\"\r\n";

print "\r\n\r\n";

?>