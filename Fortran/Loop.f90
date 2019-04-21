subroutine loop

 print *
 print '("これからループ処理を試します")'

 print *
 print '("do n=0,2 … end do")'
 do n=0,2
  print '("n=",i1,"のループ")',n
 end do

 print *
 print '("do n=35,50,7 … end do")'
 do n=35,50,7
  print '("n=",i2,"のループ")',n
 end do

end subroutine loop