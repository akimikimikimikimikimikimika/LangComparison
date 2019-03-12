#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "\r\nこれから演算子を試します\r\n\r\n";

print "\r\n算術演算子\r\n";
print "24 +5 = @{[    24 +5   ]}\r\n";
print "24 -5 = @{[    24 -5   ]}\r\n";
print "24 *5 = @{[    24 *5   ]}\r\n";
print "24 /5 = @{[    24 /5   ]}\r\n";
print "24 \%5 = @{[   24 %5   ]}\r\n";
print "24**5 = @{[    24**5   ]}\r\n";

print "\r\n数値比較演算子\r\n";
print "24  > 5 = @{[   24  > 5   ]}\r\n";
print "24 >= 5 = @{[   24 >= 5   ]}\r\n";
print "24  < 5 = @{[   24  < 5   ]}\r\n";
print "24 <= 5 = @{[   24 <= 5   ]}\r\n";
print "24 == 5 = @{[   24 == 5   ]}\r\n"; # Equal
print "24 != 5 = @{[   24 != 5   ]}\r\n"; # Not equal
print "24<=> 5 = @{[   24<=> 5   ]}\r\n";
print "24<=>24 = @{[   24<=>24   ]}\r\n";
print " 5<=>24 = @{[    5<=>24   ]}\r\n";

print "\r\n論理演算子\r\n";
print "1 and 0 = @{[   1 and 0   ]}\r\n";
print "1  && 0 = @{[   1  && 0   ]}\r\n";
print "1  or 0 = @{[   1  or 0   ]}\r\n";
print "1  || 0 = @{[   1  || 0   ]}\r\n";
print "  not 0 = @{[     not 0   ]}\r\n";
print "    ! 0 = @{[       ! 0   ]}\r\n";

print "\r\n三項演算子\r\n";
print '1 ? "yes" : "no" = "'.(   1 ? "yes" : "no"   )."\r\n";
print '0 ? "yes" : "no" = "'.(   0 ? "yes" : "no"   )."\r\n";
# 使い方: <条件>?<真の場合の値>:<偽の場合の値>

print "\r\n文字列演算子\r\n";
print '"abc"."def" = "'.(   "abc"."def"   )."\r\n";
print '"abc"x3 = "'.(   "abc"x3   )."\r\n";

print "\r\n文字列の別の表現\r\n";
print "qq(a\"b\"c) = \"a\\\"b\\\"c\" (エスケープ不要)\r\n";
print "q(that's) = 'that\\'s' (エスケープ不要)\r\n";

print "\r\n文字列比較演算子\r\n";
print '"abc" eq "def" = '.(   "abc" eq "def"   )."\r\n"; # Equal
print '"abc" ne "def" = '.(   "abc" ne "def"   )."\r\n"; # Not equal
print '"abc" lt "def" = '.(   "abc" lt "def"   )."\r\n"; # 辞書順で "abc" < "def"
print '"abc" le "def" = '.(   "abc" le "def"   )."\r\n"; # 辞書順で "abc" ≦ "def"
print '"abc" gt "def" = '.(   "abc" gt "def"   )."\r\n"; # 辞書順で "abc" > "def"
print '"abc" ge "def" = '.(   "abc" ge "def"   )."\r\n"; # 辞書順で "abc" ≧ "def"

print "\r\n\r\n";