subroutine Values

 ! 宣言部 : 予めコード前半で変数を定義しなければならない

 ! 文字列
 character(len=20) str ! len= は省略してもよい : character(20)

 ! 整数
 integer int,int2

 ! 実数
 real float ! 単精度
 double precision double ! 倍精度
 ! real*4 real4 : 単精度 (非標準の記法)
 ! real*8 real8 : 倍精度 (非標準の記法)
 ! real*16 real16 : 4倍精度 (非標準の記法)

 ! 単精度 : 有効数字6桁•指数の範囲は37
 ! 倍精度 : 有効数字15桁•指数の範囲は307
 ! 4倍精度 : 有効数字33桁•指数の範囲は4931

 ! 複素数
 complex comfl ! 単精度
 complex(kind(0d0)) comdb ! 倍精度
 ! complex*8 comp8 : 単精度 (非標準の記法)
 ! complex*16 comp16 : 倍精度 (非標準の記法)
 ! complex*32 comp32 : 4倍精度 (非標準の記法)

 ! 真偽値 (論理型)
 logical bool

 ! 実行部 : ここにおいて新たな変数を定義することはできない
 str = "フォートラン"
 int = 6
 float = 0.0375e-6
 double = 0.0375d-6
 ! real4 = 1.25e-8 ! 単精度の指数表記
 ! real8 = 1.25d-8 ! 倍精度の指数表記
 ! real16 = 1.25q-8 : 4倍精度の指数表記
 comfl = (3.0,1.0) ! (実部,虚部)
 comdb = (3.0,1.0)
 ! comp8 = (3e0,1e0)
 ! comp16 = (3d0,3d0)
 ! comp32 = (3q0,3q0)
 bool = .true.
 ! Fortranは大文字/小文字を区別しないので, .true. = .TRUE. で .false. = .FALSE. である。

 int2 = int
 call cube(int2) ! サブルーチンを呼び出す時は,callを前置する

 print *
 print '("色々な値を試します")'
 print '("文字列: ",a)',trim(str)
 print '("  長さ: ",i2)',len_trim(str)
 print '("  実長さ: ",i2)',len(str)
 print '("整数: ",i1,",",i2,",",i3)',int,func(int),int2
 print '("実数: ")'
 print '(" ",f10.3)',float
 print '(" ",e10.3)',double ! fは浮動小数表記,eは指数表記
 print '("複素数: ")' ! 複素数のフォーマットは2つの実数を並べたのに等しい
 print '(" (",e7.1,",",e7.1,")")',comfl
 print '(" (",f3.1,",",f3.1,")")',comdb
 print *,"真偽値: ",bool
 print *,"アドレス: ",loc(bool)
 print *
 print *

contains ! 関数やサブルーチンは最後のcontains節内に含め,プログラムやモジュール,別のサブルーチンに属させる
 integer function func(val)
  integer val
  func = val**2 ! 関数名と同名の変数に代入することで,値は関数の戻り値になる
 end function
 subroutine cube(val)
  integer val
  val = val**3 ! 関数やサブルーチンは基本的に参照渡しなので,これにより変数に上書きしたことになる
 end subroutine

end subroutine Values