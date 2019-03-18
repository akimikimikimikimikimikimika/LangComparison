#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import math
import cmath
import numbers
from fractions import Fraction
import random

print("\r\nこれから数学演算を試します\r\n")

print("\r\n進数変換")

print(f"dec2bin 138: {bin(138)}")
print(f"dec2oct 138: {oct(138)}")
print(f"dec2hex 138: {hex(138)}")
print()

print(f"dec2bin 138: {format(138,'b')}")
print(f"dec2oct 138: {format(138,'o')}")
print(f"dec2hex 138: {format(138,'x')}")
print()

print("dec2oct 138: %o" % 138)
print("dec2hex 138: %x" % 138)
print()

print("dec2bin 138: {:=8b}".format(138))
print("dec2oct 138: {:=8o}".format(138))
print("dec2hex 138: {:=8x}".format(138))
print()

print("dec2bin 138: {:=#10b}".format(138))
print("dec2oct 138: {:=#10o}".format(138))
print("dec2hex 138: {:=#10X}".format(138))
print()

print(f"bin2dec 1101111101: {   0b1101111101   }")
print(f"oct2dec       1575: {   0o1575   }")
print(f"hex2dec        37d: {   0x37d   }")

print("\r\n定数")
print(f"π = {   math.pi    }")
print(f"e = {   math.e     }")
print(f"τ = {   math.tau   }")

print("\r\n符号")
print(f"abs(+18)          = {   abs(+18)              }")
print(f"abs(-18)          = {   abs(-18)              }")

print("\r\n整数")
print(f"math.gcd(18,90)   = {   math.gcd(18,90)       }")
print(f"math.factorial(6) = {   math.factorial(6)     }") # 6!

print("\r\n数学関数")
print(f"math.pow(2,10)    = {   math.pow(2,10)        }")
print(f"math.sqrt(3)      = {   math.sqrt(3)          }")
print(f"math.exp(1.145)   = {   math.exp(1.145)       }")
print(f"math.expm1(1.421) = {   math.expm1(1.421)     }") # exp(x)-1
print(f"math.log(23.14)   = {   math.log(23.14)       }")
print(f"math.log(129,4.7) = {   math.log(129,4.7)     }") # 129の底4.7の対数
print(f"math.log1p(22.14) = {   math.log1p(22.14)     }") # log(x)+1
print(f"math.log10(1385)  = {   math.log10(1385)      }") # log(x,10) より高精度
print(f"math.sin(π/3)     = {   math.sin(math.pi/3)   }")
print(f"math.cos(π/3)     = {   math.cos(math.pi/3)   }")
print(f"math.tan(π/3)     = {   math.tan(math.pi/3)   }")
print(f"math.asin(1)      = {   math.asin(1)          }")
print(f"math.acos(0.5)    = {   math.acos(0.5)        }")
print(f"math.atan(-1)     = {   math.atan(-1)         }")
print(f"math.atan2(12,5)  = {   math.atan2(12,5)      }")
print(f"math.hypot(12,5)  = {   math.hypot(12,5)      }") # (12²+5²)^½
print(f"math.sinh(1.862)  = {   math.sinh(1.862)      }")
print(f"math.cosh(1.811)  = {   math.cosh(1.811)      }")
print(f"math.tanh(0.325)  = {   math.tanh(0.325)      }")
print(f"math.gamma(.2865) = {   math.gamma(.2865)     }")

print("\r\n角度変換")
print(f"math.degrees(1)   = {   math.degrees(1)     }") # rad -> deg
print(f"math.radians(540) = {   math.radians(540)   }") # deg -> rad

print("\r\n複素数")
print(f"complex(3,4)       = {   complex(3,4)             }")
print(f"(3+4j).real        = {   (3+4j).real               }") # number module
print(f"(3+4j).imag        = {   (3+4j).imag               }") # number module
print(f"(3+4j).conjugate() = {   (3+4j).conjugate()        }") # number module
print(f"abs(3+4j)          = {   abs(3+4j)                 }")
print(f"cmath.phase(3+4j)  = {   cmath.phase(3+4j)         }") # cmath module
print(f"cmath.polar(3+4j)  = {   cmath.polar(3+4j)         }") # cmath module
print(f"cmath.rect(2,π/3)  = {   cmath.rect(2,math.pi/3)   }") # cmath module
'''
    その他
        cmathはmathに存在する多くの関数を含む
        例えば,math.sqrt(-1)がエラーになるのに対し,cmath.sqrt(-1)は1jを返す
'''

print("\r\n有理数")
print(f"Fraction('32/29') = {   Fraction('32/29')   }")
print(f"Fraction(156,-84) = {   Fraction(156,-84)   }")
print(f"Fraction(π)       = {   Fraction(math.pi)   }")
print()
print(f"Fraction('32/29').numerator   = {   Fraction('32/29').numerator     }")
print(f"Fraction('32/29').denominator = {   Fraction('32/29').denominator   }")

print("\r\n乱数")
print(f"random.random()         = {   random.random()           }")
print(f"random.randint(27,54)   = {   random.randint(27,54)     }")
print(f"random.randrange(27,54) = {   random.randrange(27,54)   }")

print("\r\n端数処理")
print(f"math.floor(-3.14) = {   math.floor(-3.14)   }")
print(f" math.ceil(-3.14) = {    math.ceil(-3.14)   }")
print(f"     round(-3.14) = {        round(-3.14)   }")

print("\r\n")
