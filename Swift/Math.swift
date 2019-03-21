#! /usr/bin/swift

import Foundation

print("""

これから数学演算を試します

進数変換
433045 = \(Int("433045", radix: 6)!) (6進数 → 10進数)
35669  = \(String(35669, radix: 14)) (10進数 → 14進数)
""");
// 2~36進数に変換可能

print("""

定数
π = \(   Double.pi          )
e = \(   exp(1) as Double   )

最大/最小
max(3,4,6) = \(   max(3,4,6)   )
min(3,4,6) = \(   min(3,4,6)   )

符号
abs(+18) = \(   abs(+18)   )
abs(-18) = \(   abs(-18)   )

数学関数
pow(2,10)      = \(   pow(2,10) as Double        )
sqrt(3)        = \(   sqrt(3) as Double          )
exp(1.145)     = \(   exp(1.145) as Double       )
exp2(1.651)    = \(   exp2(1.651) as Double      ) = 2^1.651
expm1(1.421)   = \(   expm1(1.421) as Double     ) = exp(1.421)-1
log(23.14)     = \(   log(23.14) as Double       )
log1p(22.14)   = \(   log1p(22.14) as Double     ) = log(22.14)+1
log10(1385)    = \(   log10(1385) as Double      )
log2(8.825)    = \(   log2(8.825) as Double      )
logb(75)       = \(   logb(75) as Double         ) = floor(log2(75))
sin(π/3)       = \(   sin(Double.pi/3)           )
cos(π/3)       = \(   cos(Double.pi/3)           )
tan(π/3)       = \(   tan(Double.pi/3)           )
asin(1)        = \(   asin(1) as Double          )
acos(0.5)      = \(   acos(0.5) as Double        )
atan(-1)       = \(   atan(-1) as Double         )
atan2(12,5)    = \(   atan2(12,5) as Double      )
hypot(12,5)    = \(   hypot(12,5) as Double      ) = (12²+5²) ^ ½
sinh(1.862)    = \(   sinh(1.862) as Double      )
cosh(1.811)    = \(   cosh(1.811) as Double      )
tanh(0.325)    = \(   tanh(0.325) as Double      )
tgamma(0.2865) = \(   tgamma(0.2865) as Double   ) = Γ(0.287)
lgamma(0.0422) = \(   lgamma(0.0422) as Double   )

乱数
Double.random(in: 0..<1)   = \(   Double.random(in: 0..<1)     ) (0≦x<1)
Double.random(in: 27...54) = \(   Double.random(in: 27...54)   ) (27≦x≦54)

端数処理
floor(-3.14) = \(   floor(-3.14) as Double   ) (小さい方の整数へ)
 ceil(-3.14) = \(    ceil(-3.14) as Double   ) (大きい方の整数へ)
round(-3.14) = \(   round(-3.14) as Double   )
""")
/*
    多くの関数で as Double を付加するのは,同名の関数でFloat版とDouble版があるから。
    具体的な浮動小数を宣言しても,それがFloatなのか,Doubleなのか,はっきりしないから,返値の型を制限して,関数を特定する。
    e.g. sqrt の場合...
        func sqrt(_ x:Double) -> Double
        func sqrt(_ x:Float) -> Float
    の2種類の同名な関数が存在する。sqrt(3)と宣言しただけでは,3をDoubleと解釈すべきか,Floatと解釈すべきか,はっきりしないので,どちらの関数を使うべきか,わからない。
    そこで, sqrt(3) as Double とすることで,返値がDoubleでなければならないから,該当する関数が1つに絞れる。
    尚,absに関しては,
        func abs<T>(_ x: T) -> T where T : Comparable, T : SignedNumeric
    と定義しているから,比較が可能な値であれば絶対値演算ができる
*/

print("\r\n")