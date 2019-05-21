subroutine Operators

 print *
 print '("これから演算子を試します")'
 print '("算術演算子")'
 print '("24   + 5 = ",i7)'  ,24   + 5
 print '("24   - 5 = ",i7)'  ,24   - 5
 print '("24   * 5 = ",i7)'  ,24   * 5
 print '("24   / 5 = ",i7)'  ,24   / 5 ! 商は整数になる
 print '("24.0 / 5 = ",f7.1)',24.0 / 5
 print '("24  ** 5 = ",i7)'  ,24  ** 5
 print *
 print '("mod(24,5) = ",i1)',mod(24,5)
 print *
 print '("比較演算子")'
 print *,"24 == 5 = ",24 == 5
 print *,"24 /= 5 = ",24 /= 5 ! Not equal
 print *,"24  < 5 = ",24  < 5
 print *,"24 <= 5 = ",24 <= 5
 print *,"24  > 5 = ",24  > 5
 print *,"24 >= 5 = ",24 >= 5
 print *,"24.eq.5 = ",24.eq.5
 print *,"24.ne.5 = ",24.ne.5
 print *,"24.lt.5 = ",24.lt.5
 print *,"24.le.5 = ",24.le.5
 print *,"24.gt.5 = ",24.gt.5
 print *,"24.ge.5 = ",24.ge.5
 print *
 print '("論理演算子")'
 print *,".true. .and..false. = ",.true. .and..false.
 print *,".true.  .or..false. = ",.true.  .or..false.
 print *,"       .not..false. = ",       .not..false.
 print *,".true. .eqv..false. = ",.true. .eqv..false. ! 左右の真偽値が一致する (==は使えない)
 print *,".true..neqv..false. = ",.true..neqv..false. ! 左右の真偽値が一致しない (/=は使えない)
 print *
 print *

end subroutine Operators