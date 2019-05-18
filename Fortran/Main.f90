
! Fortran

! コメントは半角感嘆符の後に記載する
! Fortranではソースコードの大文字と小文字を区別しない。programもProgramもPROGRAMも同じ。

program myfortran
 ! programの後にこのソースの名前を指定する
 character*10 action
 print *
 print *,"こんにちは,私の名前はFortran。"
 do
  print *
  print *
  print '("何がしたい?")'
  print *
  print *
  print '("1. 標準入出力を試す")'
  print '("2. 色々な値を試す")'
  print '("3. 演算子を試す")'
  print '("4. 条件分岐を試す")'
  print '("5. 繰り返しを試す")'
  print '("6. 数学演算を試す")'
  print '("b. クラスを試す")'
  print '("d. ファイル操作を試す")'
  print '("e. ファイルパスを試す")'
  print '("f. プロセス系を試す")'
  print *
  print '("0. 終了")'
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
  else if (action=="6") then
   call math()
  else if (action=="b") then
   call class()
  else if (action=="d") then
   call file()
  else if (action=="e") then
   call path()
  else if (action=="f") then
   call process()
  else
   print '("指定したアクションは見つかりませんでした")'
   print *
  end if
 end do
end program myfortran