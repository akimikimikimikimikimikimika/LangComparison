subroutine Arguments

 integer::i,length,status
 character(:), allocatable::arg

 print *
 print '("このファイルを実行するにあたっての引数は以下の通りです:")'
 print *

 do i=1,command_argument_count()
  call get_command_argument(i,length=length,status=status)
  if (status==0) then
   allocate(character(length)::arg)
   call get_command_argument(i,arg,status=status)
   if (status==0) then
    print '(i2,": ",a)',i,arg
   end if
   deallocate(arg)
  else
   print '(i2,": エラーにより取得できませんでした")',i
  end if
 end do

 print *
 print *

end subroutine arguments

subroutine argumentsDemo

 print *
 print '("このファイルを実行するにあたっての引数は以下の通りです:")'
 print *
 print '(" 1: このデモは,引数を付してコマンドを実行することで体験できます")'
 print '(" 2: ")'
 print '(" 3: コマンドラインに以下のように入力して実行します")'
 print '(" 4: ")'
 print '(" 5: Fortran/Build 引数1 引数2…")'
 print '(" 6: ")'
 print '(" 7: すると,引数1,引数2…が順に出力されます")'
 print '(" 8: ")'
 print *
 print *

end subroutine ArgumentsDemo