package main

import "math"
import "time"
import "math/big"
import "math/rand"
import crand "crypto/rand"

func Math() {

	print(clean{},`

		これから数学演算を試します

		定数
		π = `,   math.Pi    ,`
		e = `,   math.E     ,`
		τ = `,   math.Phi   ,`

		最大/最小
		math.Max(3,6) = `,   math.Max(3,6)   ,`
		math.Min(3,6) = `,   math.Min(3,6)   ,`

		符号
		math.Abs(+18) = `,   math.Abs(+18)   ,`
		math.Abs(-18) = `,   math.Abs(-18)   ,`

		数学関数
		math.Pow(2,10)      = `,   math.Pow(2,10)        ,`
		math.Pow10(6)       = `,   math.Pow10(6)         ,` = 10⁶
		math.Sqrt(3)        = `,   math.Sqrt(3)          ,`
		math.Cbrt(27)       = `,   math.Cbrt(27)         ,`
		math.Exp(1.145)     = `,   math.Exp(1.145)       ,`
		math.Exp2(1.651)    = `,   math.Exp2(1.651)      ,` = 2^1.651
		math.Expm1(1.421)   = `,   math.Expm1(1.421)     ,` = exp(1.421)-1
		math.Log(23.14)     = `,   math.Log(23.14)       ,`
		math.Log1p(22.14)   = `,   math.Log1p(22.14)     ,` = log(22.14)+1
		math.Log10(1385)    = `,   math.Log10(1385)      ,`
		math.Log2(8.825)    = `,   math.Log2(8.825)      ,`
		math.Logb(75)       = `,   math.Logb(75)         ,` = floor(log2(75))
		math.Sin(π/3)       = `,   math.Sin(math.Pi/3)   ,`
		math.Cos(π/3)       = `,   math.Cos(math.Pi/3)   ,`
		math.Tan(π/3)       = `,   math.Tan(math.Pi/3)   ,`
		math.Asin(1)        = `,   math.Asin(1)          ,`
		math.Acos(0.5)      = `,   math.Acos(0.5)        ,`
		math.Atan(-1)       = `,   math.Atan(-1)         ,`
		math.Atan2(12,5)    = `,   math.Atan2(12,5)      ,`
		math.Sinh(1.862)    = `,   math.Sinh(1.862)      ,`
		math.Cosh(1.811)    = `,   math.Cosh(1.811)      ,`
		math.Tanh(0.325)    = `,   math.Tanh(0.325)      ,`
		math.Hypot(12,5)    = `,   math.Hypot(12,5)      ,` = (12²+5²) ^ ½
		math.Gamma(0.2865)  = `,   math.Gamma(0.2865)    ,`

		端数処理
		math.Floor(-3.14) = `,   math.Floor(-3.14)   ,` (小さい方の整数へ)
		math.Ceil(-3.14) = `,    math.Ceil(-3.14)   ,` (大きい方の整数へ)
		math.Trunc(-3.14) = `,   math.Trunc(-3.14)   ,` (0に近い方の整数へ)
		math.Round(-3.14) = `,   math.Round(-3.14)   ,`

	`)
	// s,c = math.Sincos(π/3) により正弦と余弦をまとめて得ることができる

	// 時刻よりシード作成
	rand.Seed(time.Now().UnixNano())

	print(clean{},`
		乱数 (時刻シード)
		rand.Int()         = `,   rand.Int()           ,`
		rand.Float64()     = `,   rand.Float64()       ,`
		rand.NormFloat64() = `,   rand.NormFloat64()   ,`

	`)

	// cryptoシード
	seed,_ := crand.Int(crand.Reader, big.NewInt(math.MaxInt64))
	rand.Seed(seed.Int64())

	print(clean{},`
		乱数 (cryptoシード)
		rand.Int()         = `,   rand.Int()           ,`
		rand.Float64()     = `,   rand.Float64()       ,`
		rand.NormFloat64() = `,   rand.NormFloat64()   ,`

	`)

	/*
		rand.NormFloat64()
		全実数を取りうるが,生成する実数は標準正規分布に従って分散する。
		標準正規分布は,平均値 μ ,分散 σ の正規分布のうち, μ=0 σ=1 のもののことである。
		生じる乱数を特定の μ,σ の正規分布に調整するには,以下の式を用いる

			rand.NormFloat64()*σ+μ

	*/

	print(ln{3})

}