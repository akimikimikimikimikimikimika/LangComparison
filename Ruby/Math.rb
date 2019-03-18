#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

print "\r\nこれから数学演算を試します\r\n\r\n";

print "\r\n進数変換\r\n";

print "433045 = #{'433045'.to_i(6).to_s(14)} (6進数 → 14進数)\r\n\r\n";
    # 2~36進数
    # to_f は文字列を浮動小数に変換する

print "dec2bin 138: #{   sprintf('%b',138)   }\r\n";
print "dec2oct 138: #{   sprintf('%o',138)   }\r\n";
print "dec2hex 138: #{   sprintf('%X',138)   }\r\n\r\n";

print "dec2bin 138: #{   sprintf('%#b',138)   }\r\n";
print "dec2oct 138: #{   sprintf('%#o',138)   }\r\n";
print "dec2hex 138: #{   sprintf('%#X',138)   }\r\n\r\n";

print "bin2dec 1101111101: #{   '0b1101111101'.oct   }\r\n";
print "oct2dec       1575: #{   '1575'.oct           }\r\n";
print "hex2dec        37d: #{   '37d'.hex            }\r\n\r\n";

print "bin2dec 1101111101: #{   Integer('0b1101111101')   }\r\n";
print "oct2dec       1575: #{   Integer('01575')          }\r\n";
print "hex2dec        37d: #{   Integer('0x37d')          }\r\n";

print "\r\n定数\r\n";
print "π = #{Math::PI}\r\n";
print "e = #{Math::E}\r\n";

print "\r\n数学関数\r\n";
print "         +18.abs = #{   +18.abs                }\r\n";
print "         -18.abs = #{   -18.abs                }\r\n";
print "    Math.sqrt(3) = #{   Math.sqrt(3)           }\r\n";
print " Math.exp(1.145) = #{   Math.exp(1.145)        }\r\n";
print " Math.log(23.14) = #{   Math.log(23.14)        }\r\n";
print "Math.log10(1385) = #{   Math.log10(1385)       }\r\n";
print "   Math.sin(π/3) = #{   Math.sin(Math::PI/3)   }\r\n";
print "   Math.cos(π/3) = #{   Math.sin(Math::PI/3)   }\r\n";
print "   Math.tan(π/3) = #{   Math.tan(Math::PI/3)   }\r\n";
print "    Math.asin(1) = #{   Math.asin(1)           }\r\n";
print "  Math.acos(0.5) = #{   Math.acos(0.5)         }\r\n";
print "   Math.atan(-1) = #{   Math.atan(-1)          }\r\n";
print "Math.atan2(12,5) = #{   Math.atan2(12,5)       }\r\n"; # atan2(y,x)
print "Math.sinh(1.862) = #{   Math.sinh(1.862)       }\r\n";
print "Math.cosh(1.811) = #{   Math.cosh(1.811)       }\r\n";
print "Math.tanh(0.325) = #{   Math.sinh(0.325)       }\r\n";

print "\r\n乱数\r\n";
print "Random.rand            = #{   Random.rand              }\r\n";  # 0≦x<1
print "Random.rand(100)       = #{   Random.rand(100)         }\r\n"; # 0≦x<100
print "Random.rand(2.7..5.4)  = #{   Random.rand(2.7..5.4)    }\r\n"; # 2.7≦x<5.4
print "Random.rand(2.7...5.4) = #{   Random.rand(2.7...5.4)   }\r\n"; # 2.7≦x≦5.4

print "\r\n端数処理\r\n";
print "-3.14.floor = #{   -3.14.floor   }\r\n"; # 小さい方の整数へ
print "-3.14.ceil  = #{   -3.14.ceil    }\r\n"; # 大きい方の整数へ
print "-3.14.round = #{   -3.14.round   }\r\n";
print "-3.14.to_i  = #{   -3.14.to_i   }\r\n"; # キャストは0に近い方へ

print "\r\n\r\n";