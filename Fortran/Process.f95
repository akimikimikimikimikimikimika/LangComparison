subroutine Process

 character(100) hostname

 call hostnm(hostname)

 print *
 print '("プロセスID: ",a)',getpid()
 print '("ホスト名: ",a)',hostname
 print *
 print '("では,3秒ほど居眠りします")'
 call sleep(3) ! 整数でしか宣言できない

end subroutine Process