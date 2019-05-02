subroutine stdinout

 character*100 aboutYou
 print *
 print '("こんにちは,私の名前はFortran。")'
 print '("古い言語ですが,処理が高速である点などから今もなお科学計算で重宝されます。")'
 print '("あなたのことを教えてください")'
 read *,aboutYou
 print '("あなたは ",a," ですね。わかりました。")',trim(aboutYou)
 print *
 print *

end subroutine stdinout

! print での出力の仕方は独特
!
!   print '(i1,i2,i3)',6,36,216      → 636216
! 1つ目の引数の''内に配列で形式を指定する (""は不可)
! 2つ目以降の引数に値を指定する
! 文字列を指定することも可能
!   print '("The value is ",i1)',6      → The value is 6
! 改行の指定子はスラッシュ
! 形式を自動判別する * も存在する
!   print *,"The sample string"
! これにより,空白の行も指定可能
!   print *