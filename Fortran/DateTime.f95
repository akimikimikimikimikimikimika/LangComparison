subroutine DateTime

 integer datArray(8)
 character(len=10) dtDescriptor(3)

 real checkError
 real dtArray(2)
 real etArray(2)

 call date_and_time(dtDescriptor(1),dtDescriptor(2),dtDescriptor(3),datArray)
 ! data_and_time サブルーチン
 ! data_and_time(date,time,zone,values)

 ! 日付と時刻を変数に代入する
 ! character(len= 8) date : 日付
 ! character(len=10) time : 時刻
 ! character(len= 5) date : タイムゾーン
 ! integer values(8)      : 日付と時刻に関する8つの数値の配列 (サンプルで表示)

 print *
 print '("これから日付と時刻を試します")'
 print *
 print '("call date_and_time")'
 print *
 print '("date: ",a)',dtDescriptor(1)
 print '("time: ",a)',dtDescriptor(2)
 print '("zone: ",a)',dtDescriptor(3)
 print *
 print '("values: ")'
 print '(i4," (year)")',datArray(1)
 print '(i4," (month)")',datArray(2)
 print '(i4," (date)")',datArray(3)
 print '(i4," (timezone)")',datArray(4) ! 分単位のタイムゾーン表示
 print '(i4," (hour)")',datArray(5)
 print '(i4," (minute)")',datArray(6)
 print '(i4," (second)")',datArray(7)
 print '(i4," (millisecond)")',datArray(8)
 print *
 print *
 print '("time: ",i10)',time()
 print '("fdate: ",a)',fdate()
 print *

 checkError = dtime(dtArray)
 if (checkError == -1.0) then
  print '("dtime : エラー")'
 else
  print '("dtime :")'
  print '(" ユーザー ",f7.3," 秒")',dtArray(1)
  print '(" システム ",f7.3," 秒")',dtArray(2)
 end if
 checkError = etime(etArray)
 if (checkError == -1.0) then
  print '("etime : エラー")'
 else
  print '("etime :")'
  print '(" ユーザー ",f7.3," 秒")',etArray(1)
  print '(" システム ",f7.3," 秒")',etArray(2)
 end if
 ! dtime,etime 関数
 ! dtime(tArray)
 ! etime(tArray)

 ! 処理にかかった所要時間 (秒単位) を変数に代入する
 ! 1/100 秒 の分解能を持つ値が返される
 ! 1回目の呼び出し : プログラムを実行開始してからの所要時間を示す
 ! 2回目以降の呼び出し : 前回この関数を実行してからの所要時間を示す
 ! real(2) tArray : tArray(1)がユーザー時間 tArray(2)がシステム時間
 ! real [戻り値] : 値の取得にエラーがあったかどうかを示す
 !      [戻り値] = -1 ⇒ エラー
 !      [戻り値] > -1 ⇒ 成功 ( tArray(1)+tArray(2) になっている )
 ! エラーの場合は, tArray に値が書き込まれない

 ! マルチプロセス (並列処理) で実行している場合は, dtime はそれぞれのプロセスでの合計がtArrayに代入されるが,不正確なのであてにならない。
 ! 一方で etime は,並列処理で実際にかかった時間を tArray(1) に代入する。このとき, tArray(2) は 0.0 が代入される。

 print *
 print *

end subroutine DateTime