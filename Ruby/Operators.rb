#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

print "\r\nこれから演算子を試します\r\n\r\n";

print "\r\n算術演算子\r\n";
print "24   + 5 = #{   24   +5   }\r\n";
print "24   - 5 = #{   24   -5   }\r\n";
print "24   * 5 = #{   24   *5   }\r\n";
print "24.0 / 5 = #{   24.0 /5   }\r\n";
print "24   % 5 = #{   24   %5   }\r\n";
print "24  ** 5 = #{   24  **5   }\r\n";

print "\r\n比較演算子\r\n";
print "24  > 5 = #{   24  > 5   }\r\n";
print "24 >= 5 = #{   24 >= 5   }\r\n";
print "24  < 5 = #{   24  < 5   }\r\n";
print "24 <= 5 = #{   24 <= 5   }\r\n";
print "24 == 5 = #{   24 == 5   }\r\n"; # Equal
print "24 != 5 = #{   24 != 5   }\r\n"; # Not equal
print "24<=> 5 = #{   24<=> 5   }\r\n";
print "24<=>24 = #{   24<=>24   }\r\n";
print " 5<=>24 = #{    5<=>24   }\r\n";

print "\r\n論理演算子\r\n";
print "true and false = #{   true and false   }\r\n";
print "true  && false = #{   true  && false   }\r\n";
print "true  or false = #{   true  or false   }\r\n";
print "true  || false = #{   true  || false   }\r\n";
print "	    not false = #{        not false   }\r\n";
print "	      ! false = #{          ! false   }\r\n";

print "\r\n三項演算子\r\n";
print "true  ? \"yes\" : \"no\" = \"#{   true  ? "yes" : "no"   }\"\r\n";
print "false ? \"yes\" : \"no\" = \"#{   false ? "yes" : "no"   }\"\r\n";
# 使い方: <条件>?<真の場合の値>:<偽の場合の値>

print "\r\n文字列演算子\r\n";
print "\"abc\"+\"def\" = #{   "abc"+"def"   }\"\r\n";
print "\"abc\"*3 = #{   "abc"*3   }\"\r\n";
print "\"The word “Ruby” has %d letters\" % 4 = \"#{   'The word “Ruby” has %d letters' % 4   }\"\r\n"; # sprintf の代替

print "\r\n\r\n";