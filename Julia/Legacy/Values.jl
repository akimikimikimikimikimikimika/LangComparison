#! /usr/bin/env julia

# 文字列
string = "ジュリア"
lines = """
First line
Second line
Third line
"""
#=
	変数展開/式展開の仕方
	"The values is $(val*2)"
=#
😆 = "じゅりあ"
# こんな変わった変数名が使えるのもJuliaの醍醐味

# 文字
char = Char(74)
# バイト
byte = b"Julia byte type"

# 数値
int = Int(6)
int8 = Int8(6)
int16 = Int16(6)
int32 = Int32(6)
int64 = Int64(6)
int128 = Int128(6)
uint = UInt(6)
uint8 = UInt8(6)
uint16 = UInt16(6)
uint32 = UInt32(6)
uint64 = UInt64(6)
uint128 = UInt128(6)
float16 = Float16(.0375e-6)
float32 = Float32(.0375e-6)
float64 = Float64(.0375e-6)
complex = 3+1im
rational = 96//-24
	# IntとUIntはそれぞれの実行環境に即して適切な型のエイリアスとして設定されている。例えば,64ビット環境では,IntはInt64の,UIntはUInt64のエイリアスになっている
nan = NaN
nan16 = NaN16
nan32 = NaN32
nan64 = NaN64
	# NaNは浮動小数の値であり,Float16,Float32,Float64のそれぞれのNaNが用意されている。単にNaNと指定した場合,Intと同様に,NaN16,NaN32,NaN64の何れの値になる

# 真偽値
bool = true

# 値なし
null = nothing

# 配列
array1 = [1,"second",3,3.14,false]
array2 = [11 12 13 14 15 16] # 横向き
array3 = [11;21;31;41;51;61] # 縦向き
array4 = [11 12 13;21 22 23;31 32 33] # 3x3行列

# タプル
tuple1 = (1,"second",3,3.14,false)

# 範囲
range1 = 5:8 # 5≦x≦8
range2 = 5:0.6:8 # 5≦x≦8 by 0.6
	#=
		range() 関数による範囲定義
		range1 = range(5,stop=8) # 5≦x≦8
		range2 = range(5,length=8) # 5≦x<13
		range3 = range(5,step=0.6,stop=8)
			# 5, 5.6, 6.2, 6.8, 7.4, 8.0
			# stepの間隔でstopの値まで取る
		range4 = range(5,step=1.5,length=8)
			# 5, 6.5, 8, 9.5, 11, 12.5, 14, 15.5
			# stepの間隔でlength個の値を取る
		range5 = range(5,stop=8,length=6)
			# 5, 5.6, 6.2, 6.8, 7.4, 8.0
			# stopまでの範囲を等間隔に分割してlength個の値を取る
	=#

# 関数
function cube(val)
	val^3
end
func = function (val)
	val^2
end
   #=
		• 関数の戻り値
			関数末尾で評価された式の結果が自動的に返却される。
			但し, return を明示することもでき,その場合はそれ以降の式は実行されない
		• 色々な引数
			(a,b,x...) : 可変個引数
				e.g. f(1,2,3,4,5) と渡せば, a=1 b=2 x=(3,4,5) (タプル) となる。
			(a::Int) : 型指定
				当然 f("Text") とすればエラーである
			(a::Int=6) : 初期値
				これを指定すれば,その引数を無視しても実行が可能
   =#

println("""

色々な値を試します

文字列: $(string)
文字列2:
$(lines)
文字列3: $(😆)
文字: $(char)
バイト: $(byte)
整数:
   Int:     $(int),$(func(int)),$(cube(int))
   Int8:    $(int8)
   Int16:   $(int16)
   Int32:   $(int32)
   Int64:   $(int64)
   Int128:  $(int128)
   UInt:    $(uint)
   UInt8:   $(uint8)
   UInt16:  $(uint16)
   UInt32:  $(uint32)
   UInt64:  $(uint64)
   UInt128: $(uint128)
浮動小数:
   Float16: $(float16)
   Float32: $(float32)
   Float64: $(float64)
複素数:
   Complex: $(complex)
有理数:
   Rational: $(rational)
非数: $(nan)
   NaN16: $(nan16)
   NaN32: $(nan32)
   NaN64: $(nan64)
真偽値: $(bool)
配列:
   $(array1)
   $(array2)
   $(array3)
   $(array4)
タプル:
   $(tuple1)
範囲:
   $(range1)
   $(range2)
関数:
   $(cube)
無名関数:
   $(func)
""")

#=
	Juliaのブロック : begin…end
	Juliaの変数は,ブロックの種類によって外部から参照できるかどうかが変わる。外部から参照できるかできないかを明示するには,globalキーワードやlocalキーワードを使う。
	• begin…end
		a=6
		global b=6
		local c=6
		begin
			println(a) # 参照/変更可能
			println(b) # 参照/変更可能
			println(c) # アクセス不可 (エラー)
			d=6        # 外部から参照/変更可能
			global e=6 # 外部から参照/変更可能
			local f=6  # 外部からアクセス不可 (エラー)
		end
	• for,while,try-catch,function
		a=6
		global b=6
		local c=6
		for n = 1:1
			global a
			global b
			# 上記のようにglobal宣言をすれば参照/変更可能。しなければ,参照のみ可能
			println(a)
			println(b)
			println(c) # アクセス不可 (エラー)
			d=6        # 外部からアクセス不可 (エラー)
			global e=6 # 外部から参照/変更可能
			local f=6  # 外部からアクセス不可 (エラー)
		end

	グローバル変数 : global var
	ローカル変数 : local var
	定数 : const var
		但し,定数に異なる型の値を代入しようとするとエラーになるが,同じ型の値を代入しようとしても警告が表示されるだけ。全く同じ値を代入しようとすれば警告は表示されない。
=#

println("\r\n")