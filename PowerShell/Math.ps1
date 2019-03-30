#! /usr/local/bin/pwsh

@"

これから数学演算を試します

進数変換
dec2bin 138: $(   [Convert]::ToString(138,2)    )
dec2oct 138: $(   [Convert]::ToString(138,8)    )
dec2hex 138: $(   [Convert]::ToString(138,16)   )

bin2dec 1101111101: $(   [Convert]::ToInt32('1101111101',2)   )
oct2dec       1575: $(   [Convert]::ToInt32('1575',8)         )
hex2dec        37d: $(   [Convert]::ToInt32('37d',16)         )
"@;
# ToStringにしても,ToInt32にしても,進数は2,8,16以外受け付けない

@"
定数
π = $(   [Math]::PI   )
e = $(   [Math]::E    )

最大/最小
[Math]::Max(3,6) = $(   [Math]::Max(3,6) <# 引数は2つまで #>   )
[Math]::Min(3,6) = $(   [Math]::Min(3,6) <# 引数は2つまで #>   )

符号
[Math]::Abs(+18) = $(   [Math]::Abs(+18)   )
[Math]::Abs(-18) = $(   [Math]::Abs(-18)   )

数学関数
[Math]::Sqrt(3)     = $(   [Math]::Sqrt(3)             )
[Math]::Cbrt(27)    = $(   [Math]::Cbrt(27)            )
[Math]::Pow(2,10)   = $(   [Math]::Pow(2,10)           )
[Math]::Exp(1.145)  = $(   [Math]::Exp(1.145)          )
[Math]::Log(23.14)  = $(   [Math]::Log(23.14)          )
[Math]::Log10(1385) = $(   [Math]::Log10(1385)         )
[Math]::Sin(π/3)    = $(   [Math]::Sin([Math]::PI/3)   )
[Math]::Cos(π/3)    = $(   [Math]::Cos([Math]::PI/3)   )
[Math]::Tan(π/3)    = $(   [Math]::Tan([Math]::PI/3)   )
[Math]::Asin(1)     = $(   [Math]::Asin(1)             )
[Math]::Acos(0.5)   = $(   [Math]::Acos(0.5)           )
[Math]::Atan(-1)    = $(   [Math]::Atan(-1)            )
[Math]::Atan2(12,5) = $(   [Math]::Atan2(12,5)         )
[Math]::Sinh(1.862) = $(   [Math]::Sinh(1.862)         )
[Math]::Cosh(1.862) = $(   [Math]::Cosh(1.811)         )
[Math]::Tanh(1.862) = $(   [Math]::Tanh(0.325)    　   )

乱数
Get-Random = $(   Get-Random   )

端数処理
             Floor(-3.14) = $(   [Math]::Floor(-3.14)        ) (小さい方の整数へ)
           Ceiling(-3.14) = $(   [Math]::Ceiling(-3.14)      ) (大きい方の整数へ)
             Round(-3.14) = $(   [Math]::Round(-3.14)        )
[Convert]::ToInt32(-3.14) = $(   [Convert]::ToInt32(-3.14)   ) (キャストは0に近い方へ)
"@;

"`r`n";