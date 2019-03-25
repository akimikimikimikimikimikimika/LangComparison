#! /usr/local/bin/perl

use Time::Piece;
use Time::HiRes qw/gettimeofday/;

my ($sts,$stm)=gettimeofday();

print <<"DateTime";

これから日付と時刻を試します


DateTime

my $t=localtime;

print <<"DateTime";
localtime
->year      = @{[$t->year]}
->_year     = @{[$t->_year]}
->yy        = @{[$t->yy]}
->mon       = @{[$t->mon]}
->_mon      = @{[$t->_mon]}
->month     = @{[$t->month]}
->fullmonth = @{[$t->fullmonth]}
->mday      = @{[$t->mday]} (day/month)
->wday      = @{[$t->wday]}
->_wday     = @{[$t->_wday]} (day/week)
->day       = @{[$t->day]}
->fullday   = @{[$t->fullday]}
->yday      = @{[$t->yday]} (day/year)
->hour      = @{[$t->hour]}
->minute    = @{[$t->minute]}
->second    = @{[$t->second]}

->epoch = @{[$t->epoch]} (UNIXエポック)

->isdst          = @{[$t->isdst]} (夏時間かどうか)
->is_leap_year   = @{[$t->is_leap_year]} (閏年かどうか)
->month_last_day = @{[$t->month_last_day]} (月末の日にち)

->strftime(..) = "@{[$t->strftime(<<"Format")

datetime    %%c : %c
date        %%D : %D
            %%x : %x
            %%F : %F
            %%v : %v
time        %%T : %T
            %%X : %X
            %%R : %R
            %%r : %r
century     %%C : %C
year        %%Y : %Y
            %%y : %y
ISO year    %%G : %G
            %%g : %g
month       %%b : %b = %%h
            %%B : %B
            %%m : %m
day         %%d : %d
            %%e : %e
day/year    %%j : %j
weekday     %%a : %a
            %%A : %A
            %%w : %w
            %%u : %u
ISO week    %%V : %V
week/year   %%U : %U
            %%W : %W
hour        %%H : %H
            %%k : %k
            %%I : %I
            %%l : %l
AM/PM       %%p : %p
minute      %%M : %M
second      %%S : %S
UNIX epoch  %%s : %s
timezone    %%Z : %Z
            %%z : %z
Format
]}"

DateTime

my ($ens,$enm) = gettimeofday();

print "この処理に要した時間: @{[($ens-$sts)*1000000+($enm-$stm)]} マイクロ秒\r\n";

print "\r\n\r\n";