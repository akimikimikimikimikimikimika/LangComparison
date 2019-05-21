subroutine Math

 double precision pi
 double precision e

 ! Fortranの浮動小数はせいぜい小数点以下6~7桁の精度しかない
 pi = acos(-1.0)
 e = exp(1.0)

 print *
 print '("これから数学演算を試します")'
 print *
 print '("定数")'
 print '("π = ",f9.7)',pi
 print '("e = ",f9.7)',e
 print *
 print '("数学関数")'
 print '("sqrt(3.0)       = ",f9.7)',sqrt(3.0)
 print '("exp(1.145)      = ",f9.7)',exp(1.145)
 print '("log(23.14)      = ",f9.7)',log(23.14)
 print '("log10(1385.0)   = ",f9.7)',log10(1385.0)
 print '("sin(π/3)        = ",f9.7)',sin(pi/3.0)
 print '("cos(π/3)        = ",f9.7)',cos(pi/3.0)
 print '("tan(π/3)        = ",f9.7)',tan(pi/3.0)
 print '("asin(1.0)       = ",f9.7)',asin(1.0)
 print '("acos(0.5)       = ",f9.7)',acos(0.5)
 print '("atan(-1.0)      = ",f9.7)',atan(-1.0)
 print '("atan2(12.0,5.0) = ",f9.7)',atan2(12.0,5.0)
 print '("sinh(1.862)     = ",f9.7)',sinh(1.862)
 print '("cosh(1.811)     = ",f9.7)',cosh(1.811)
 print '("tanh(0.325)     = ",f9.7)',tanh(0.325)
 print *
 print '("乱数")'
 print '(f10.8)',ran(760013) ! 引数には,大きな値の奇数が入らなければならない

 print *

end subroutine Math