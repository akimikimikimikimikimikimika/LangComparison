subroutine stdinout

 character*100 aboutYou
 print *
 print *,"こんにちは,私の名前はFortran。"
 print *,"古い言語ですが,処理が高速である点などから今もなお科学計算で重宝されます。"
 print *,"あなたのことを教えてください"
 read *,aboutYou
 print *,"あなたは "//trim(aboutYou)//" ですね。わかりました。"
 print *
 print *

end subroutine stdinout