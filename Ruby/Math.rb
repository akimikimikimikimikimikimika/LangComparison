#! /usr/local/bin/ruby

print """

これから数学演算を試します

進数変換
433045 = #{"433045".to_i(6)} (6進数 → 10進数)
35669  = #{35669.to_s(14)}  (10進数 → 14進数)
""";
=begin
    2~36進数に変換可能
    to_i : 整数に変換
    to_f : 浮動小数に変換
    to_c : 複素数に変換
    to_r : 有理数に変換
    to_s : 文字列に変換
=end
print """
dec2bin 138: #{   sprintf("%b",138)   }
dec2oct 138: #{   sprintf("%o",138)   }
dec2hex 138: #{   sprintf("%X",138)   }

dec2bin 138: #{   sprintf("%#b",138)   }
dec2oct 138: #{   sprintf("%#o",138)   }
dec2hex 138: #{   sprintf("%#X",138)   }

bin2dec 1101111101: #{   "0b1101111101".oct   }
oct2dec       1575: #{   "1575".oct           }
hex2dec        37d: #{   "37d".hex            }

定数
π = #{Math::PI}
e = #{Math::E}

最大/最小
[3,4,6].min    = #{   [3,4,6].min      }
[3,4,6].max    = #{   [3,4,6].max      }
[3,4,6].minmax = #{   [3,4,6].minmax   }

符号
+18.abs = #{   +18.abs   }
-18.abs = #{   -18.abs   }

数学関数
Math.sqrt(3)     = #{   Math.sqrt(3)           }
Math.exp(1.145)  = #{   Math.exp(1.145)        }
Math.log(23.14)  = #{   Math.log(23.14)        }
Math.log10(1385) = #{   Math.log10(1385)       }
Math.sin(π/3)    = #{   Math.sin(Math::PI/3)   }
Math.cos(π/3)    = #{   Math.sin(Math::PI/3)   }
Math.tan(π/3)    = #{   Math.tan(Math::PI/3)   }
Math.asin(1)     = #{   Math.asin(1)           }
Math.acos(0.5)   = #{   Math.acos(0.5)         }
Math.atan(-1)    = #{   Math.atan(-1)          }
Math.atan2(12,5) = #{   Math.atan2(12,5)       } (atan2(y,x))
Math.sinh(1.862) = #{   Math.sinh(1.862)       }
Math.cosh(1.811) = #{   Math.cosh(1.811)       }
Math.tanh(0.325) = #{   Math.tanh(0.325)       }

複素数
Complex(3,4) = #{   Complex(3,4)   }
(3+4i).real  = #{   (3+4i).real    }
(3+4i).imag  = #{   (3+4i).imag    }
(3+4i).conj  = #{   (3+4i).conj    }
(3+4i).abs   = #{   (3+4i).abs     }
(3+4i).arg   = #{   (3+4i).arg     }
(3+4i).polar = #{   (3+4i).polar   }
(3+4i).rect  = #{   (3+4i).rect    }
""";
=begin
   複素数型は書き換えできない
   Mathに含まれる数学関数は複素数に対応していない
=end
print """

有理数
Rational(\"32/29\") = #{   Rational("32/29")    }
Rational(156,-84) = #{   Rational(156,-84)    }
Rational(π)       = #{   Rational(Math::PI)   }

Rational(\"32/29\").numerator   = #{   Rational("32/29").numerator     }
Rational(\"32/29\").denominator = #{   Rational("32/29").denominator   }

乱数
Random.rand            = #{   Random.rand              } (0≦x<1)
Random.rand(100)       = #{   Random.rand(100)         } (0≦x<100)
Random.rand(2.7..5.4)  = #{   Random.rand(2.7..5.4)    } (2.7≦x<5.4)
Random.rand(2.7...5.4) = #{   Random.rand(2.7...5.4)   } (2.7≦x≦5.4)

端数処理
-3.14.floor    = #{   -3.14.floor   } (小さい方の整数へ)
-3.14.ceil     = #{   -3.14.ceil    } (大きい方の整数へ)
-3.14.truncate = #{   -3.14.ceil    } (0に近い方の整数へ)
-3.14.round    = #{   -3.14.round   }
-3.14.to_i     = #{   -3.14.to_i    } (キャストはtruncateする)
""";

print "\r\n\r\n";