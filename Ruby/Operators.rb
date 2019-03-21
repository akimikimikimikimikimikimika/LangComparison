#! /usr/local/bin/ruby

print """

これから演算子を試します

算術演算子
24   + 5 = #{   24   +5   }
24   - 5 = #{   24   -5   }
24   * 5 = #{   24   *5   }
24.0 / 5 = #{   24.0 /5   }
24   % 5 = #{   24   %5   }
24  ** 5 = #{   24  **5   }

比較演算子
24  > 5 = #{   24  > 5   }
24 >= 5 = #{   24 >= 5   }
24  < 5 = #{   24  < 5   }
24 <= 5 = #{   24 <= 5   }
24 == 5 = #{   24 == 5   }
24 != 5 = #{   24 != 5   }
24<=> 5 = #{   24<=> 5   }
24<=>24 = #{   24<=>24   }
 5<=>24 = #{    5<=>24   }

論理演算子
true and false = #{   true and false   }
true  && false = #{   true  && false   }
true  or false = #{   true  or false   }
true  || false = #{   true  || false   }
     not false = #{        not false   }
       ! false = #{          ! false   }

三項演算子
true  ? \"yes\" : \"no\" = \"#{   true  ? "yes" : "no"   }\"
false ? \"yes\" : \"no\" = \"#{   false ? "yes" : "no"   }\"

文字列演算子
\"abc\"+\"def\" = #{   "abc"+"def"   }\"
\"abc\"*3 = #{   "abc"*3   }\"
\"The word “Ruby” has %d letters\" % 4 =
\"#{   'The word “Ruby” has %d letters' % 4   }\" (sprintfの代替)
""";

print "\r\n\r\n";