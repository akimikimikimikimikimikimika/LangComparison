subroutine Values

 ! 宣言部 : 予めコード前半で変数を定義しなければならない
 ! 文字列
 character*20 str
 ! 整数
 integer int
 integer int2
 ! 単精度実数
 real float
 ! 倍精度実数
 double precision double
 ! 単精度複素数
 complex comfl
 ! 倍精度複素数
 complex(kind(0d0)) comdb
 ! 真偽値 (論理型)
 logical bool

 ! 実行部 : ここにおいて新たな変数を定義することはできない
 str = "フォートラン"
 int = 6
 float = 0.0375e-6
 double = 0.0375e-6
 comfl = (3.0,1.0) ! (実部,虚部)
 comdb = (3.0,1.0)
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
 print '(" ",e10.3)',float
 print '(" ",e10.3)',double
 print '("複素数: ")' ! 複素数のフォーマットは2つの実数を並べたのに等しい
 print '(" (",f3.1,",",f3.1,")")',comfl
 print '(" (",f3.1,",",f3.1,")")',comdb
 print *,"真偽値: ",bool
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