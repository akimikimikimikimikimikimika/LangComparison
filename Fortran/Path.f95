subroutine Path

 character home*128
 character current*128

 call getenv("HOME",home)
 call getcwd(current)

 print '("ホームディレクトリ:       ",a)',home
 print '("カレントディレクトリ:     ",a)',current

end subroutine Path