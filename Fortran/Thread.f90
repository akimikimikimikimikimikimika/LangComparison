
! スレッドの実行内容を定義
subroutine mtAction(m)

 integer m
 double precision md
 double precision nd

 md=dble(m)

 do n=1,9
  nd=dble(n)
  print '("|(",i1,",",i1,")| = ",f10.7)',m,n,sqrt(md*md+nd*nd)
 end do

end subroutine mtAction

subroutine Thread

!$ use omp_lib

 ! OpenMPを利用するには,上に示したようなuse宣言が必要

 print *
 print '("これからスレッドを試します")'

 ! 以下,OpenMPを用いたパラレル処理
 ! コンパイルコマンドに -fopenmp が入っていることを確認する

 print *

 ! 9個のスレッドそれぞれで6回のループ

!$omp parallel
!$omp do
 do m=1,9
  call mtAction(m)
 end do
!$omp end do
!$omp end parallel

 print *
 print *

 ! 並列処理の例2
 ! sectionで区切る
 ! sectionsで囲まれた領域は,sectionを開始点として,其の後に示された内容を並列実行する

!$omp parallel
!$omp sections
!$omp section
print '("スレッド其の1")'
!$omp section
print '("スレッド其の2")'
!$omp section
print '("スレッド其の3")'
!$omp end sections
!$omp end parallel

 print *
 print *

end subroutine Thread