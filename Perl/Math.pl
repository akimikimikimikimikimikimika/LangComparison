#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

use Math::Trig; # pi に必要
use POSIX;      # log10 に必要

print "\r\nこれから数学演算を試します\r\n\r\n";

print "\r\n進数変換\r\n";

print "dec2bin 138: @{[   sprintf('%b',138)   ]}\r\n";
print "dec2oct 138: @{[   sprintf('%o',138)   ]}\r\n";
print "dec2hex 138: @{[   sprintf('%X',138)   ]}\r\n\r\n";

print "dec2bin 138: @{[   sprintf('%#b',138)   ]}\r\n";
print "dec2oct 138: @{[   sprintf('%#o',138)   ]}\r\n";
print "dec2hex 138: @{[   sprintf('%#X',138)   ]}\r\n\r\n";

print "bin2dec 1101111101: @{[   oct('0b1101111101')   ]}\r\n";
print "oct2dec       1575: @{[   oct('1575')           ]}\r\n";
print "hex2dec        37d: @{[   hex('37d')            ]}\r\n";

print "\r\n定数\r\n";
print "π = @{[pi]}\r\n";
print "e = @{[exp(1)]}\r\n";

print "\r\n数学関数\r\n";
print "   abs(+18) = @{[   abs(+18)      ]}\r\n";
print "   abs(-18) = @{[   abs(-18)      ]}\r\n";
print "    sqrt(3) = @{[   sqrt(3)       ]}\r\n";
print " exp(1.145) = @{[   exp(1.145)    ]}\r\n";
print " log(23.14) = @{[   log(23.14)    ]}\r\n";
print "log10(1385) = @{[   log10(1385)   ]}\r\n"; # use POSIX が必要
print "   sin(π/3) = @{[   sin(pi/3)     ]}\r\n";
print "   cos(π/3) = @{[   cos(pi/3)     ]}\r\n";
print "   tan(π/3) = @{[   tan(pi/3)     ]}\r\n";
print "    asin(1) = @{[   asin(1)       ]}\r\n";
print "  acos(0.5) = @{[   acos(0.5)     ]}\r\n";
print "   atan(-1) = @{[   atan(-1)      ]}\r\n";
print "atan2(12,5) = @{[   atan2(12,5)   ]}\r\n"; # atan2(y,x)
print "sinh(1.862) = @{[   sinh(1.862)   ]}\r\n";
print "cosh(1.811) = @{[   cosh(1.811)   ]}\r\n";
print "tanh(0.325) = @{[   sinh(0.325)   ]}\r\n";

print "\r\n乱数\r\n";
print "rand()          = @{[   rand()            ]}\r\n";  # 0≦x<1
print "rand(100)       = @{[   rand(100)         ]}\r\n"; # 0≦x<100

print "\r\n端数処理\r\n";
print "floor(-3.14) = @{[   floor(-3.14)   ]}\r\n"; # 小さい方の整数へ
print " ceil(-3.14) = @{[    ceil(-3.14)   ]}\r\n"; # 大きい方の整数へ
print "  int(-3.14) = @{[     int(-3.14)   ]}\r\n"; # キャストは0に近い方へ

print "\r\n\r\n";