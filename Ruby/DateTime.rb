#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

st=Time.now;

print "\r\nこれから日付と時刻を試します\r\n\r\n";

print "現在ローカル時刻: #{Time.now.getlocal}\r\n";
print "現在UTC時刻:      #{Time.now.getutc}\r\n";

now=Time.now;
print "\r\nTime.now\r\n";
print "      .asctime = #{now.asctime}\r\n";
print "         .to_s = #{now.to_s}\r\n";
print "         .year = #{now.year}\r\n";
print "        .month = #{now.month}\r\n"; # .mon
print "          .day = #{now.day}\r\n";
print "         .wday = #{now.wday}\r\n";
print "         .yday = #{now.yday}\r\n";
print "         .hour = #{now.hour}\r\n";
print "          .min = #{now.min}\r\n";
print "          .sec = #{now.sec}\r\n";
print "         .usec = #{now.usec}\r\n";
print "         .nsec = #{now.nsec}\r\n";
print "         .zone = #{now.zone}\r\n";
print ".strftime(...) = \"#{now.strftime(<<"Format")}\"\r\n";
\r\n
datetime    %%c : %c
date        %%D : %D = %%x
            %%F : %F
            %%v : %v
time        %%T : %T = %%X
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
            %%P : %P
minute      %%M : %M
second      %%S : %S
UNIX epoch  %%s : %s
milli+micro %%N : %N
millisecond %%L : %L
timezone    %%Z : %Z
            %%z : %z
           %%:z : %:z
          %%::z : %::z
Format

en=Time.now
print "この処理に要した時間: #{(en-st)*1000000} マイクロ秒\r\n";

print "\r\n\r\n";