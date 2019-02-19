#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

print "\nこれから演算子を試します\n\n";

print "\n算術演算子\n";
print "24   + 5 = #{    24 +5   }\n";
print "24   - 5 = #{    24 -5   }\n";
print "24   * 5 = #{    24 *5   }\n";
print "24.0 / 5 = #{  24.0 /5   }\n";
print "24  ** 5 = #{    24**5   }\n";
print "24   % 5 = #{    24 %5   }\n";

print "\n比較演算子\n";
print "24  > 5 = #{   24  > 5   }\n";
print "24 >= 5 = #{   24 >= 5   }\n";
print "24  < 5 = #{   24  < 5   }\n";
print "24 <= 5 = #{   24 <= 5   }\n";
print "24 == 5 = #{   24 == 5   } (Equal)\n";
print "24 != 5 = #{   24 != 5   } (Not Equal)\n";
print "24<=> 5 = #{   24<=> 5   }\n";
print "24<=>24 = #{   24<=>24   }\n";
print " 5<=>24 = #{    5<=>24   }\n";

print "\n論理演算子\n";
print "true and false = #{   true and false   }\n";
print "true  && false = #{   true  && false   }\n";
print "true  or false = #{   true  or false   }\n";
print "true  || false = #{   true  || false   }\n";
print "     not false = #{        not false   }\n";
print "       ! false = #{          ! false   }\n";

print "\n三項演算子\n";
print "true  ? \"yes\" : \"no\" = \"#{   true  ? "yes" : "no"   }\"\n";
print "false ? \"yes\" : \"no\" = \"#{   false ? "yes" : "no"   }\"\n";
print "   ( 使い方: <条件>?<真の場合の値>:<偽の場合の値> )\n";

print "\n文字列演算子\n";
print "\"abc\"+\"def\" = #{   "abc"+"def"   }\"\n";
print "\"abc\"*3 = #{   "abc"*3   }\"\n";