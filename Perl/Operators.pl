#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "\nこれから演算子を試します\n\n";

print "\n算術演算子\n";
print "24 +5 = @{[    24 +5   ]}\n";
print "24 -5 = @{[    24 -5   ]}\n";
print "24 *5 = @{[    24 *5   ]}\n";
print "24 /5 = @{[    24 /5   ]}\n";
print "24 \%5 = @{[   24 %5   ]}\n";
print "24**5 = @{[    24**5   ]}\n";

print "\n数値比較演算子\n";
print "24  > 5 = @{[   24  > 5   ]}\n";
print "24 >= 5 = @{[   24 >= 5   ]}\n";
print "24  < 5 = @{[   24  < 5   ]}\n";
print "24 <= 5 = @{[   24 <= 5   ]}\n";
print "24 == 5 = @{[   24 == 5   ]} (Equal)\n";
print "24 != 5 = @{[   24 != 5   ]} (Not Equal)\n";
print "24<=> 5 = @{[   24<=> 5   ]}\n";
print "24<=>24 = @{[   24<=>24   ]}\n";
print " 5<=>24 = @{[    5<=>24   ]}\n";

print "\n論理演算子\n";
print "1 and 0 = @{[   1 and 0   ]}\n";
print "1  && 0 = @{[   1  && 0   ]}\n";
print "1  or 0 = @{[   1  or 0   ]}\n";
print "1  || 0 = @{[   1  || 0   ]}\n";
print "  not 0 = @{[     not 0   ]}\n";
print "    ! 0 = @{[       ! 0   ]}\n";

print "\n三項演算子\n";
print '1 ? "yes" : "no" = "'.(   1 ? "yes" : "no"   )."\n";
print '0 ? "yes" : "no" = "'.(   0 ? "yes" : "no"   )."\n";
print "   ( 使い方: <条件>?<真の場合の値>:<偽の場合の値> )\n";

print "\n文字列演算子\n";
print '"abc"."def" = "'.(   "abc"."def"   )."\n";
print '"abc"x3 = "'.(   "abc"x3   )."\n";

print "\n文字列の別の表現\n";
print "qq(a\"b\"c) = \"a\\\"b\\\"c\" (エスケープ不要)\n";
print "q(that's) = 'that\\'s' (エスケープ不要)\n";

print "\n文字列比較演算子\n";
print '"abc" eq "def" = '.(   "abc" eq "def"   )." (Equal)\n";
print '"abc" ne "def" = '.(   "abc" ne "def"   )." (Not Equal)\n";
print '"abc" lt "def" = '.(   "abc" lt "def"   )." (辞書順で \"abc\" < \"def\")\n";
print '"abc" le "def" = '.(   "abc" le "def"   )." (辞書順で \"abc\" ≦ \"def\")\n";
print '"abc" gt "def" = '.(   "abc" gt "def"   )." (辞書順で \"abc\" > \"def\")\n";
print '"abc" ge "def" = '.(   "abc" ge "def"   )." (辞書順で \"abc\" ≧ \"def\")\n";