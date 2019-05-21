subroutine Condition

 logical::test1 = .true.
 logical::test2 = .false.
 integer val

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

 val = 8
 ! valはinteger,character,logicalの何れかでなければならない
 select case (val)
  case (:-1)
   print '("負の値は受け付けない")'
  case (0:1)
   print '(i2,"は特別な値である")',val
  case (8:10)
   print '(i2,"は連続して素数ではない")',val
  case (4,6)
   print '(i2,"は素数ではない")',val
  case (2,3,5,7)
   print '(i2,"は素数である")',val
  case default
   print '("整数以外は受け付けない")'
 end select

end subroutine Condition