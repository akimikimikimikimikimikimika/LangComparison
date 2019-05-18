module Classdef

 ! クラスのインスタンスのプロパティ,メソッドを呼ぶ際は
 ! vector%x
 ! のように % を間に挟む

 ! クラス定義1 (Vector)
 type Vector

  character(len=27)::description="Fortran simple vector class"

  ! 初期値を与えておくのが賢明
  double precision::x = 0d0
  double precision::y = 0d0
  double precision::z = 0d0

 contains
  ! やはりメソッドはcontains以下で宣言しなければならない

  ! メソッドは以下のようにprocedure文で宣言だけしておく
  ! procedure::メソッド名=>ポインタ
  ! クラス宣言の外でサブルーチンとしてメソッドの内容を定義する
  procedure::desc=>describingVector
  procedure::add=>adding
  procedure::added=>added
  procedure::coefMultiply=>coefMultiply
  procedure::coefMultiplied=>coefMultiplied

 end type Vector

 ! Vectorのコンストラクタの宣言は別途interfaceで定義
 interface Vector
  module procedure initVector
  ! コンストラクタの内容はinitVectorという名前の関数で別途定義
 end interface Vector

 ! クラス定義2 (ExtendedVector inherits from Vector)
 type,extends(Vector)::ExtendedVector
  ! 継承宣言

 contains

  procedure::dot=>dotProduct
  procedure::cross=>crossProduct
  procedure::norm=>normalize

 end type ExtendedVector

 interface ExtendedVector
  module procedure initExtendedVector
 end interface ExtendedVector

contains ! moduleのcontains

 ! Vectorのコンストラクタ実装 (サブルーチンではなく関数)
 type(Vector) function initVector(x,y,z) result(self)

  double precision::x,y,z

  self%x=x
  self%y=y
  self%z=z

 end function initVector

 ! メソッドを定義するサブルーチンの名前はポインタ名にしておく
 ! 第1引数はクラスのインスタンス

 ! インスタンスの説明
 subroutine describingVector(self,desctext)

  class(Vector)::self
  character(len=100),pointer::desctext ! 文字列を返すのにポインタを利用

  write(desctext,'("(",f6.1,",",f6.1,",",f6.1,")")') self%x,self%y,self%z
  desctext = trim(desctext)

 end subroutine describingVector

 ! 足し算を定義 (自分自身に足し合わせていく)
 subroutine adding(self,v)

  class(Vector)::self
  class(Vector)::v

  self%x=self%x+v%x
  self%y=self%y+v%y
  self%z=self%z+v%z

 end subroutine adding

 ! 足し算を定義 (自分自身と引数のVectorを足し合わせた結果を返す)
 subroutine added(self,v,nv)

  class(Vector)::self
  class(Vector)::v
  type(Vector),pointer::av
  type(Vector),pointer::nv

  allocate(av)

  nv => av
  av = Vector(0d0,0d0,0d0)

  av%x=self%x+v%x
  av%y=self%y+v%y
  av%z=self%z+v%z

 end subroutine added

 ! スカラ倍を定義 (自分自身を実数倍)
 subroutine coefMultiply(self,k)

  class(Vector)::self
  double precision::k

  self%x=self%x*k
  self%y=self%y*k
  self%z=self%z*k

 end subroutine coefMultiply

 ! 自分自身の実数倍のVectorを生成
 subroutine coefMultiplied(self,k,nv)

  class(Vector)::self
  double precision::k
  type(Vector),pointer::av
  type(Vector),pointer::nv

  allocate(av)

  nv => av
  av = Vector(0d0,0d0,0d0)

  av%x=self%x*k
  av%y=self%y*k
  av%z=self%z*k

 end subroutine coefMultiplied

 ! ExtendedVectorのコンストラクタ実装
 type(ExtendedVector) function initExtendedVector(x,y,z) result(self)

  double precision::x,y,z

  self%x=x
  self%y=y
  self%z=z

 end function initExtendedVector

 ! 内積を定義
 subroutine dotProduct(self,v,nv)

  class(ExtendedVector)::self
  type(ExtendedVector)::v
  double precision,pointer::av
  double precision,pointer::nv

  allocate(av) ! ポインタに値を代入する前にメモリ割り当て

  nv => av
  av = 0d0

  av=av+self%x*v%x
  av=av+self%y*v%y
  av=av+self%z*v%z

 end subroutine dotProduct

 ! 外積を定義
 subroutine crossProduct(self,v,nv)

  class(ExtendedVector)::self
  type(ExtendedVector)::v
  type(Vector),pointer::av
  type(Vector),pointer::nv

  allocate(av)

  nv => av
  av = Vector(0d0,0d0,0d0)

  av%x=self%y*v%z-self%z*v%y
  av%y=self%z*v%x-self%x*v%z
  av%z=self%x*v%y-self%y*v%x

 end subroutine crossProduct

 ! ノルムを定義
 subroutine normalize(self,nv)

  class(ExtendedVector)::self
  type(ExtendedVector),pointer::v
  double precision,pointer::dotted
  double precision,pointer::av
  double precision,pointer::nv

  allocate(v)
  allocate(dotted)
  allocate(av)

  v = ExtendedVector(self%x,self%y,self%z)
  call self%dot(v,dotted)
  av = sqrt(dotted)
  nv => av

 end subroutine normalize

end module Classdef