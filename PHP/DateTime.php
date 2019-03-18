#! /usr/local/bin/php
<?php

$i = function($v){return $v;};

$st=gettimeofday();

print "\r\nこれから日付と時刻を試します\r\n\r\n";

print "現在時刻: {$i(date_format(new DateTime(),'Y-m-d H:i:s'))}\r\n";
print "タイムゾーン: {$i(date_default_timezone_get())}\r\n\r\n";

print <<< Format
date(..) = "
datetime    c : {$i(date("c"))}
            r : {$i(date("r"))}
year        Y : {$i(date("Y"))}
            y : {$i(date("y"))}
ISO year    o : {$i(date("o"))}
isLeapYear  L : {$i(date("L"))}
month       F : {$i(date("F"))}
            M : {$i(date("M"))}
            m : {$i(date("m"))}
            n : {$i(date("n"))}
daysInMonth t : {$i(date("t"))}
day         d : {$i(date("d"))}
            j : {$i(date("j"))}
           jS : {$i(date("jS"))}
day/year    z : {$i(date("z"))}
weekday     l : {$i(date("l"))}
            D : {$i(date("D"))}
            N : {$i(date("N"))}   (1:Mon ~ 7:Sun)
            w : {$i(date("w"))}   (0:Sun ~ 6:Sat)
week/year   W : {$i(date("W"))}
hour        H : {$i(date("H"))}
            G : {$i(date("G"))}
            h : {$i(date("h"))}
            g : {$i(date("g"))}
minute      i : {$i(date("i"))}
second      s : {$i(date("s"))}
UNIX Epoch  U : {$i(date("U"))}
millisecond v : {$i(date("v"))}
microsecond u : {$i(date("u"))}
timezone    e : {$i(date("e"))}
            T : {$i(date("T"))}
            O : {$i(date("O"))}
            P : {$i(date("P"))}
            Z : {$i(date("Z"))}
isDST       I : {$i(date("I"))}
"
Format;

print "\r\n\r\n様々な書式\r\n";
print "Atom:     {$i(date(DateTime::ATOM))}\r\n";
print "Cookie:   {$i(date(DateTime::COOKIE))}\r\n";
print "ISO-8601: {$i(date(DateTime::ISO8601))}\r\n";
print "RFC 822:  {$i(date(DateTime::RFC822))}\r\n";
print "RFC 1036: {$i(date(DateTime::RFC1036))}\r\n";
print "RFC 1123: {$i(date(DateTime::RFC1123))}\r\n";
print "RFC 2822: {$i(date(DateTime::RFC2822))}\r\n";
print "RSS:      {$i(date(DateTime::RSS))}\r\n";
print "W3C:      {$i(date(DateTime::W3C))}\r\n";

print "\r\nstrftime(..) = \"{$i(strftime(
<<< Format

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
ISO week    %%V : %V    1 (Mon) ~ 7 (Sun)
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
))}\"\r\n";

$en=gettimeofday();

print "\r\nこの処理に要した時間: {$i(($en['sec']-$st['sec'])*100000+$en['usec']-$st['usec'])} マイクロ秒\r\n";

print "\r\n\r\n";

?>