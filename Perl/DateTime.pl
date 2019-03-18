#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

use Time::Piece;

print "\r\nこれから日付と時刻を試します\r\n\r\n";

$t=localtime;
print "localtime\r\n";
print "          ->year = @{[$t->year]}\r\n";
print "         ->_year = @{[$t->_year]}\r\n";
print "            ->yy = @{[$t->yy]}\r\n";
print "           ->mon = @{[$t->mon]}\r\n";
print "          ->_mon = @{[$t->_mon]}\r\n";
print "         ->month = @{[$t->monname]}\r\n";        # ->monname
print "     ->fullmonth = @{[$t->fullmonth]}\r\n";
print "          ->mday = @{[$t->mday]}\r\n";           # ->day_of_month
print "          ->wday = @{[$t->wday]}\r\n";
print "         ->_wday = @{[$t->_wday]}\r\n";          # ->day_of_week
print "           ->day = @{[$t->day]}\r\n";            # ->wdayname
print "       ->fullday = @{[$t->fullday]}\r\n";
print "          ->yday = @{[$t->yday]}\r\n";           # ->day_of_year
print "          ->hour = @{[$t->hour]}\r\n";
print "        ->minute = @{[$t->minute]}\r\n";         # ->min
print "        ->second = @{[$t->second]}\r\n";         # ->sec
print "         ->epoch = @{[$t->epoch]}\r\n";          # 1970/1/1 からの秒数
print "         ->isdst = @{[$t->isdst]}\r\n";          # ->daylight_savings (夏時間の有無)
print "  ->is_leap_year = @{[$t->is_leap_year]}\r\n";   # 閏年かどうか
print "->month_last_day = @{[$t->month_last_day]}\r\n"; # 月末の日にち
print "  ->strftime(..) = \"@{[$t->strftime(<<\"Format\")]}\"";
\r\n
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

print "\r\n\r\n";