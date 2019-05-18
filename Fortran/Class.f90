subroutine class
 use Classdef ! クラス定義読み込み
 ! クラス定義は Classdef.f90 で取り扱う。

 type(Vector) vec1
 type(ExtendedVector) vec2
 type(ExtendedVector) vec3
 type(Vector) vec4

 ! サブルーチンに値を書き込んでもらうポインタを指定
 character(len=100),pointer::string
 double precision,pointer::float
 type(Vector),pointer::threeDim

 vec1 = Vector(3d0,2d0,1d0)
 vec2 = ExtendedVector(6d0,4d0,2d0)
 vec3 = ExtendedVector(54d0,63d0,72d0)
 vec4 = Vector(0d0,0d0,0d0)

 vec3%x = 16

 print *
 print '("これからクラスを試します")'
 print *
 call vec1%desc(string)
 print '("vec1の説明: ",a)',trim(string)
 call vec2%desc(string)
 print '("vec2の説明: ",a)',trim(string)
 call vec3%desc(string)
 print '("vec3の説明: ",a)',trim(string)
 call vec4%desc(string)
 print '("vec4の説明: ",a)',trim(string)
 print *
 print '("vec1のx座標: ",f6.1)',vec1%x
 print '("vec2のy座標: ",f6.1)',vec2%y
 print '("vec3のz座標: ",f6.1)',vec3%z
 print *
 call vec1%added(vec2,threeDim)
 call threeDim%added(vec3,threeDim)
 call threeDim%desc(string)
 print '("vec1+vec2+vec3: ",a)',trim(string)
 call vec4%added(vec2,threeDim)
 call threeDim%desc(string)
 print '("vec4+vec2:      ",a)',trim(string)
 call vec2%coefMultiplied(12d0,threeDim)
 call threeDim%desc(string)
 print '("vec2×12:        ",a)',trim(string)
 print *
 call vec2%dot(vec3,float)
 print '("vec2∙vec3: ",f6.2)',float
 call vec3%cross(vec2,threeDim)
 call threeDim%desc(string)
 print '("vec3×vec2: ",a)',trim(string)
 call vec3%norm(float)
 print '("|vec3|:    ",f6.2)',float
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

end subroutine class