subroutine file

 character home*128
 character md1*128
 character md2*128
 character md3*128

 print '(/,"これからファイル操作を試します",/)'

 print '("> カレントディレクトリをホームに変更",/)'
 call getenv("HOME",home)
 call chdir(home)

 ! ファイル/フォルダ/シンボリックリンクの作成

 print '("> Emptyという空フォルダを作成")'
 call system("mkdir Empty")
 ! つまり,Fortranではフォルダを作成できない

 print '("> Blankという空ファイルを作成")'
 open(unit=11,file="Blank")
 close(11)

 print '("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成",/)'
 call symlnk("Blank","Empty/Symlink")

 ! 書込み

 print '("> Untitled.mdというMarkdownファイルを作成して書込み",/)'
 open(unit=12,file="Untitled.md",action="write")
 write(12,'("# Header 1")')
 close(12)

 ! 移動/名称変更

 print '("> フォルダEmptyをPackageに名称変更")'
 call rename("Empty","Package")
 print '("> Packageフォルダ内のSymlinkファイルをAliasに名称変更")'
 call rename("Package/Symlink","Package/Alias")
 print '("> Untitled.mdを移動して,名称変更")'
 call rename("Untitled.md","Package/Headers.md")

 ! 追記

 print '("> Markdownファイルに追記")'
 open(unit=13,file="Package/Headers.md",action="write",position="append")
 write(13,'("## Header 2",/,"### Header 3")')
 close(13)

 ! 読込み

 print '("> Markdownファイルを読込み")'
 open(unit=14,file="Package/Headers.md",action="read")
 read(14,'(a,a,a)') md1,md2,md3
 close(14)
 print '(a,a,a)',md1,md2,md3

 ! ファイル/フォルダの削除

 print '("> ファイルBlankを削除")'
 call unlink("Blank")

 print '("> シンボリックリンクAliasを削除")'
 call unlink("Package/Alias")

end subroutine file

! Fortranでは,ファイルハンドラとして装置番号を指定する
! 装置番号: 1~99 の任意の整数
! 但し,多くのシステムで以下の装置番号は予約されているため,利用できない。
!   5: 標準入力
!   6: 標準出力
!   0: 標準エラー出力

! open関数のstatusに指定できるのは,以下のオプション
!   'old' : ファイルが指定した場所に存在していなければならない。
!   'new' : ファイルが指定した場所には存在してはならない。
!   'replace' : ファイルが指定した場所に存在していれば新規空ファイルに置換され,存在していなければ新規空ファイルが作成される。