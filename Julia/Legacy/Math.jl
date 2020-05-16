#! /usr/bin/env julia

println("""

これから数学演算を試します

定数
π = $(   pi-0     #= 0で引く必要は本来ない =#)
e = $(   exp(1)   )

最大/最小
max(3,4,6)  = $(   max(3,4,6)    )
min(3,4,6)  = $(   min(3,4,6)    )
minmax(6,3) = $(   minmax(6,3)   )

clamp(0.5,-1,1) = $(   clamp(0.5,-1,1)   ) (-1≦x≦ 1 ⇒  x)
clamp( -5,-1,1) = $(   clamp( -5,-1,1)   ) (   x≦-1 ⇒ -1)
clamp(  5,-1,1) = $(   clamp(  5,-1,1)   ) (   x≧ 1 ⇒  1)

符号
abs( 18)  = $(   abs( 18)    )
abs(-18)  = $(   abs(-18)    )
abs2( 18) = $(   abs2( 18)   ) ( | 18|² )
abs2(-18) = $(   abs2(-18)   ) ( |-18|² )
sign( 18) = $(   sign( 18)   )
sign(-18) = $(   sign(-18)   )

copysign( 18,-12) = $(   copysign( 18,-12)   ) = sign(-12)*abs( 18)
copysign(-18, 12) = $(   copysign(-18, 12)   ) = sign( 12)*abs(-18)

整数
binomial(8,5) = $(   binomial(8,5)   ) ( ₈C₅ )
factorial(6)  = $(   factorial(6)    ) ( 6! )

数学関数
sqrt(3)        = $(   sqrt(3)          )
isqrt(3)       = $(   isqrt(3)         ) = floor(sqrt(3))
cbrt(27)       = $(   cbrt(27)         )
exp(1.145)     = $(   exp(1.145)       )
exp2(1.651)    = $(   exp2(1.651)      ) = 2^1.651
exp10(2.303)   = $(   exp10(2.303)     ) = 10^1.651
expm1(1.421)   = $(   expm1(1.421)     ) = exp(1.421)-1
log(23.14)     = $(   log(23.14)       )
log(129,4.7)   = $(   log(129,4.7)     ) = (129の底4.7の対数)
log1p(22.14)   = $(   log1p(22.14)     ) = log(22.14)+1
log10(1385)    = $(   log10(1385)      )
log2(8.825)    = $(   log2(8.825)      )
sin(π/3)       = $(   sin(pi/3)        ) = sind(60) = sinpi(1/3)
cos(π/3)       = $(   cos(pi/3)        ) = cosd(60) = cospi(1/3)
tan(π/3)       = $(   tan(pi/3)        ) = tand(60)
sincos(π/3)    = $(   sincos(pi/3)     )
sec(π/3)       = $(   sec(pi/3)        ) = secd(60)
csc(π/3)       = $(   csc(pi/3)        ) = cscd(60)
cot(π/3)       = $(   cot(pi/3)        ) = cotd(60)
asin(1)        = $(   asin(1)          )
asind(1)       = $(   asind(1)         )
acos(0.5)      = $(   acos(0.5)        )
acosd(0.5)     = $(   acosd(0.5)       )
atan(-1)       = $(   atan(-1)         )
atand(-1)      = $(   atand(-1)        )
asec(2)        = $(   asec(2)          )
asecd(2)       = $(   asecd(2)         )
acsc(1)        = $(   acsc(1)          )
acscd(1)       = $(   acscd(1)         )
acot(-1)       = $(   acot(-1)         )
acotd(-1)      = $(   acotd(-1)        )
atan(12,5)     = $(   atan(12,5)       )
hypot(12,5)    = $(   hypot(12,5)      ) = (12²+5²) ^ ½
sinh(1.862)    = $(   sinh(1.862)      )
cosh(1.811)    = $(   cosh(1.811)      )
tanh(0.325)    = $(   tanh(0.325)      )
sinc(0.7396)   = $(   sinc(0.7396)     ) = sin(πx)/πx
cosc(0.09637)  = $(   cosc(0.09637)    ) = cos(πx)/x-sin(πx)/πx²

角度変換
rad2deg(1)   = $(   rad2deg(1)     ) (rad -> deg)
deg2rad(540) = $(   deg2rad(540)   ) (deg -> rad)

複素数 (数学関数の多くはそのまま使用可能)
real(3+4im)  = $(   real(3+4im)    )
imag(3+4im)  = $(   imag(3+4im)    )
reim(3+4im)  = $(   reim(3+4im)    )
conj(3+4im)  = $(   conj(3+4im)    )
abs(3+4im)   = $(   abs(3+4im)     )
angle(3+4im) = $(   angle(3+4im)   )

cis(π/3) = $(   cis(pi/3)   ) = cos(π/3)+isin(π/3)

有理数
numerator(1//3)   = $(   numerator(1//3)     )
denominator(1//3) = $(   denominator(1//3)   )

乱数

端数処理
floor(-3.14) = $(   floor(-3.14)   ) (小さい方の整数へ)
 ceil(-3.14) = $(    ceil(-3.14)   ) (大きい方の整数へ)
trunc(-3.14) = $(   trunc(-3.14)   ) (0に近い方の整数へ)
round(-3.14) = $(   round(-3.14)   )

""")

println("\r\n")