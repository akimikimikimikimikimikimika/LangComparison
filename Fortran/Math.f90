subroutine Math

 real*16 pi
 real*16 e

 pi = acos(-1q0)
 e = exp(1q0)

 ! Fortranの数学関数は,入力値の精度によって出力値の精度が決定する
 ! ここでは4倍精度にしているので,戻り値も4倍精度になる。

 print *
 print '("これから数学演算を試します")'
 print *
 print '("進数変換")'
 print '("dec2bin 138: ",b8)',138
 print '("dec2oct 138: ",o8)',138
 print '("dec2hex 138: ",z8)',138
 print *
 print '("bin2dec 1101111101: ",i3)',b"1101111101"
 print '("oct2dec       1575: ",i3)',o"1575"
 print '("hex2dec        37d: ",i3)',z"37d"
 print *
 print '("定数")'
 print '("π = ",f35.33)',pi
 print '("e = ",f35.33)',e
 print *
 print '("最大/最小")'
 print '("max(3,4,6) = ",i1)',max(3,4,6)
 print '("min(3,4,6) = ",i1)',min(3,4,6)
 print *
 print '("符号")'
 print '("abs(+18) = ",i2)',abs(+18)
 print '("abs(-18) = ",i2)',abs(-18)
 print *
 print '("数学関数")'
 print '("sqrt(3q0)       = ",f35.33)',sqrt(3q0)
 print '("exp(1.145q0)    = ",f35.33)',exp(1.145q0)
 print '("log(23.14q0)    = ",f35.33)',log(23.14q0)
 print '("log10(1385q0)   = ",f35.33)',log10(1385q0)
 print '("sin(π/3)        = ",f35.33)',sin(pi/3q0)
 print '("cos(π/3)        = ",f35.33)',cos(pi/3q0)
 print '("tan(π/3)        = ",f35.33)',tan(pi/3q0)
 print '("asin(1q0)       = ",f35.33)',asin(1q0)
 print '("acos(0.5q0)     = ",f35.33)',acos(0.5q0)
 print '("atan(-1q0)      = ",f35.33)',atan(-1q0)
 print '("atan2(12q0,5q0) = ",f35.33)',atan2(12q0,5q0)
 print '("sinh(1.862q0)   = ",f35.33)',sinh(1.862q0)
 print '("cosh(1.811q0)   = ",f35.33)',cosh(1.811q0)
 print '("tanh(0.325q0)   = ",f35.33)',tanh(0.325q0)
 print *
 print '("複素数")'
 print '("aimag((3d0,4d0)) = ",f3.1)',aimag((3d0,4d0))
 print '("conjg((3d0,4d0)) = (",f3.1,",",f4.1,")")',conjg((3d0,4d0))
 print *

 print '("乱数")'

 ! 精度の低い乱数
 print '("ran(760013) = ",f8.6)',ran(760013)
 ! 0≤x<1 の範囲の単精度な均一分布の乱数を生成する
 ! 引数には,大きな値の奇数が入れなければならない

 ! 一般的に使用可能な乱数
 print '("rand(0) = ",f8.6)',rand(0)
 ! 0≤x<1 の範囲の単精度の乱数を生成する
 ! print '("drand(0) = ",f17.15)',drand(0)
 ! 0≤x<1 の範囲の倍精度の乱数を生成する
 print '("irand(0) = ",i10)',irand(0)
 ! 0≤x≤2147483647 の範囲の整数の乱数を生成する

 print *
 print '("端数処理")'
 print '("nint(-3.14) = ",i2," (四捨五入)")',nint(-3.14)
 print '("int(-3.14) = ",i2," (0に近い方の整数へ)")',int(-3.14)
 print '("ceiling(-3.14) = ",i2," (大きい方の整数へ)")',ceiling(-3.14)
 print *

end subroutine Math