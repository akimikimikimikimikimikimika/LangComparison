
! Fortran

! コメントは半角感嘆符の後に記載する
! Fortranではソースコードの大文字と小文字を区別しない。つまり,programもProgramもPROGRAMも同じ。

program myfortran
 ! programの後にこのソースの名前を指定する

 integer::length,status
 character(:),allocatable::arg
 intrinsic::command_argument_count,get_command_argument

 character*10 action

 if (command_argument_count()==0) then
  print *
  print '("こんにちは,私の名前はFortran。")'
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
   print '("h. コマンドライン引数を試す")'
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
    call Stdinout()
   else if (action=="2") then
    call Values()
   else if (action=="3") then
    call Operators()
   else if (action=="4") then
    call Condition()
   else if (action=="5") then
    call Loop()
   else if (action=="6") then
    call Math()
   else if (action=="b") then
    call Class()
   else if (action=="d") then
    call File()
   else if (action=="e") then
    call Path()
   else if (action=="f") then
    call Process()
   else if (action=="h") then
    call ArgumentsDemo()
   else
    print '("指定したアクションは見つかりませんでした")'
    print *
   end if
  end do
 else
  if (command_argument_count()==1) then
   call get_command_argument(1,length=length,status=status)
   if (status==0) then
    allocate(character(length)::arg)
    call get_command_argument(1,arg,status=status)
    if (status==0) then
     if (arg=="Stdinout") then
      call Stdinout()
     else if (arg=="Values") then
      call Values()
     else if (arg=="Operators") then
      call Operators()
     else if (arg=="Condition") then
      call Condition()
     else if (arg=="Loop") then
      call Loop()
     else if (arg=="Math") then
      call Math()
     else if (arg=="Class") then
      call Class()
     else if (arg=="File") then
      call File()
     else if (arg=="Path") then
      call Path()
     else if (arg=="Process") then
      call Process()
     else if (action=="Arguments") then
      call ArgumentsDemo()
     else
      call Arguments()
     end if
    else
     call Arguments()
    end if
    deallocate(arg)
   else
    call Arguments()
   end if
  else
   call Arguments()
  end if
 end if

end program myfortran