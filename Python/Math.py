#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import math
import cmath
import numbers
from fractions import Fraction
import random

print(f"""

これから数学演算を試します

進数変換
dec2bin 138: {bin(138)}
dec2oct 138: {oct(138)}
dec2hex 138: {hex(138)}

dec2bin 138: {format(138,'b')}
dec2oct 138: {format(138,'o')}
dec2hex 138: {format(138,'x')}

dec2oct 138: {'%o' % 138}
dec2hex 138: {'%x' % 138}

dec2bin 138: {'{:=8b}'.format(138)}
dec2oct 138: {'{:=8o}'.format(138)}
dec2hex 138: {'{:=8x}'.format(138)}

dec2bin 138: {'{:=#10b}'.format(138)}
dec2oct 138: {'{:=#10o}'.format(138)}
dec2hex 138: {'{:=#10x}'.format(138)}

bin2dec 1101111101: {   0b1101111101   }
oct2dec       1575: {   0o1575   }
hex2dec        37d: {   0x37d   }

定数
π = {   math.pi    }
e = {   math.e     }
τ = {   math.tau   }

最大/最小
min([3,4,6]) = {   min([3,4,6])   }
max([3,4,6]) = {   max([3,4,6])   }

符号
abs(+18) = {   abs(+18)   }
abs(-18) = {   abs(-18)   }

整数
math.gcd(18,90)   = {   math.gcd(18,90)     }
math.factorial(6) = {   math.factorial(6)   } = 6!

数学関数
math.pow(2,10)    = {   math.pow(2,10)        }
math.sqrt(3)      = {   math.sqrt(3)          }
math.exp(1.145)   = {   math.exp(1.145)       }
math.expm1(1.421) = {   math.expm1(1.421)     } = exp(1.421)-1
math.log(23.14)   = {   math.log(23.14)       }
math.log(129,4.7) = {   math.log(129,4.7)     } = (129の底4.7の対数)
math.log1p(22.14) = {   math.log1p(22.14)     } = log(22.14)+1
math.log10(1385)  = {   math.log10(1385)      } ( log(x,10) より高精度 )
math.sin(π/3)     = {   math.sin(math.pi/3)   }
math.cos(π/3)     = {   math.cos(math.pi/3)   }
math.tan(π/3)     = {   math.tan(math.pi/3)   }
math.asin(1)      = {   math.asin(1)          }
math.acos(0.5)    = {   math.acos(0.5)        }
math.atan(-1)     = {   math.atan(-1)         }
math.atan2(12,5)  = {   math.atan2(12,5)      }
math.hypot(12,5)  = {   math.hypot(12,5)      } = (12²+5²) ^ ½
math.sinh(1.862)  = {   math.sinh(1.862)      }
math.cosh(1.811)  = {   math.cosh(1.811)      }
math.tanh(0.325)  = {   math.tanh(0.325)      }
math.gamma(.2865) = {   math.gamma(.2865)     } = Γ(.2865)

角度変換
math.degrees(1)   = {   math.degrees(1)     } (rad -> deg)
math.radians(540) = {   math.radians(540)   } (deg -> rad)

複素数
complex(3,4)       = {   complex(3,4)              }
(3+4j).real        = {   (3+4j).real               } (number module)
(3+4j).imag        = {   (3+4j).imag               } (number module)
(3+4j).conjugate() = {   (3+4j).conjugate()        } (number module)
abs(3+4j)          = {   abs(3+4j)                 }
cmath.phase(3+4j)  = {   cmath.phase(3+4j)         } (cmath module)
cmath.polar(3+4j)  = {   cmath.polar(3+4j)         } (cmath module)
cmath.rect(2,π/3)  = {   cmath.rect(2,math.pi/3)   } (cmath module)
""")
'''
    複素数型は書き換えられない

    cmathはmathに含まれる関数と同等の関数を実装し,複素数でも利用できるようにしている
    上で挙げた複素数特有の関数の他,cmathにもmathにあるような関数が多く含まれるが,同等の関数でも,cmathの関数と,mathの関数とでは挙動が異なる
    例えば,math.sqrt(-1)がエラーになるのに対し,cmath.sqrt(-1)は1jを返す
'''
print(f"""
有理数
Fraction('32/29') = {   Fraction('32/29')   }
Fraction(156,-84) = {   Fraction(156,-84)   }
Fraction(π)       = {   Fraction(math.pi)   }

Fraction('32/29').numerator   = {   Fraction('32/29').numerator     }
Fraction('32/29').denominator = {   Fraction('32/29').denominator   }

乱数
random.random()         = {   random.random()           } (0≦x<1)
random.randint(27,54)   = {   random.randint(27,54)     } (27≦x≦54, integer)
random.randrange(27,54) = {   random.randrange(27,54)   } (27≦x<54)

端数処理
math.floor(-3.14) = {   math.floor(-3.14)   } (小さい方の整数へ)
 math.ceil(-3.14) = {    math.ceil(-3.14)   } (大きい方の整数へ)
     round(-3.14) = {        round(-3.14)   }
""")

print("\r\n")
