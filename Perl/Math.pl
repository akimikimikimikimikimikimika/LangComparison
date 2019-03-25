#! /usr/local/bin/perl

use Math::Trig; # pi に必要
use List::Util "max";
use List::Util "min";
use POSIX;      # log10 に必要
use Math::Complex;

print <<"Math";

これから数学演算を試します

進数変換
dec2bin 138: @{[   sprintf("%b",138)   ]}
dec2oct 138: @{[   sprintf("%o",138)   ]}
dec2hex 138: @{[   sprintf("%X",138)   ]}

dec2bin 138: @{[   sprintf("%#b",138)   ]}
dec2oct 138: @{[   sprintf("%#o",138)   ]}
dec2hex 138: @{[   sprintf("%#X",138)   ]}

bin2dec 1101111101: @{[   oct("0b1101111101")   ]}
oct2dec       1575: @{[   oct("1575")           ]}
hex2dec        37d: @{[   hex("37d")            ]}

定数
π = @{[pi]}     (use Math::Trig が必要)
e = @{[exp(1)]}

最大/最小
max(3,4,6) = @{[   max(3,4,6)   ]}
min(3,4,6) = @{[   min(3,4,6)   ]}

符号
abs(+18) = @{[   abs(+18)   ]}
abs(-18) = @{[   abs(-18)   ]}

数学関数
sqrt(3)     = @{[   sqrt(3)       ]}
exp(1.145)  = @{[   exp(1.145)    ]}
log(23.14)  = @{[   log(23.14)    ]}
log10(1385) = @{[   log10(1385)   ]} (use POSIX が必要)
sin(π/3)    = @{[   sin(pi/3)     ]}
cos(π/3)    = @{[   cos(pi/3)     ]}
tan(π/3)    = @{[   tan(pi/3)     ]}
asin(1)     = @{[   asin(1)       ]}
acos(0.5)   = @{[   acos(0.5)     ]}
atan(-1)    = @{[   atan(-1)      ]}
atan2(12,5) = @{[   atan2(12,5)   ]} atan2(y,x)
sinh(1.862) = @{[   sinh(1.862)   ]}
cosh(1.811) = @{[   cosh(1.811)   ]}
tanh(0.325) = @{[   tanh(0.325)   ]}

複素数
cplx(3,4)        = @{[   cplx(3,4)          ]}
cplxe(2,π/3)     = @{[   cplxe(2,pi/3)      ]}
(3+4*i)->Re()    = @{[   (3+4*i)->Re()      ]}
(3+4*i)->Im()    = @{[   (3+4*i)->Im()      ]}
(3+4*i)->abs()   = @{[   (3+4*i)->abs()     ]}
(3+4*i)->arg()   = @{[   (3+4*i)->arg()     ]}
(3+4*i)->rho()   = @{[   (3+4*i)->rho()     ]}
(3+4*i)->theta() = @{[   (3+4*i)->theta()   ]}
Math
=pod
   複素数型は成分毎に書き換え可能(mutable)
   e.g. $z->Im(5) : 複素数 $z の虚部を5に変更する
   数学関数においてこれらの複素数を利用できる
=cut
print <<"Math";
乱数
rand()          = @{[   rand()      ]} (0≦x<1)
rand(100)       = @{[   rand(100)   ]} (0≦x<100)

端数処理
floor(-3.14) = @{[   floor(-3.14)   ]} (小さい方の整数へ)
 ceil(-3.14) = @{[    ceil(-3.14)   ]} (大きい方の整数へ)
  int(-3.14) = @{[     int(-3.14)   ]} (キャストは0に近い方へ)
Math

print "\r\n\r\n";