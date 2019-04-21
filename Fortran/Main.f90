
! Fortran

program fortran
 character*10 action
 print *
 print *,"こんにちは,私の名前はFortran。"
 do
  print *
  print *
  print *,"何がしたい?"
  print *
  print *
  print *,"1. 標準入出力を試す"
  print *,"2. 色々な値を試す"
  print *,"3. 演算子を試す"
  print *,"4. 条件分岐を試す"
  print *,"5. 繰り返しを試す"
  print *
  print *,"0. 終了"
  print *
  read *,action
  print *
  print *
  print *
  if (action=="0") then
   exit
  else if (action=="1") then
   call stdinout()
  else if (action=="2") then
   call values()
  else if (action=="3") then
   call operators()
  else if (action=="4") then
   call condition()
  else if (action=="5") then
   call loop()
  else
   print *,"指定したアクションは見つかりませんでした"
   print *,""
  end if
 end do
end program fortran