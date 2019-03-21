#! /usr/local/bin/bash

echo """

これから日付と時刻を試します

現在ローカル時刻: `date`
現在UTC時刻:      `date -u`

フォーマット
date +.. = \"`date +"""
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

"""`\"
"""

printf "\r\n\r\n"