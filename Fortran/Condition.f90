subroutine condition

 logical::test1 = .true.
 logical::test2 = .false.

 print *
 print '("これから条件分岐を試します")'

 if (test1) then
  print '("どうやらtest1は真のようです")'
 end if

 if (.not.test1) then
  print '("どうやらtest1は偽のようです")'
 else if (test2) then
  print '("どうやらtest2は真のようです")'
 else if (.not.test2 .and. test1) then
  print '("真偽が混在しているようです")'
 else
  print '("どれでもないようです")'
 end if

end subroutine condition