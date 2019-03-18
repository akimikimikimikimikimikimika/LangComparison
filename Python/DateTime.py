#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import datetime as dt
dto=dt.datetime

st=dto.now()

print("\r\nこれから日付と時刻を試します\r\n")

print(f"現在ローカル時刻: {dto.now()}")
print(f"現在UTC時刻:      {dto.utcnow()}")

now=dto.now()
print("\r\ndatetime.now()")
print(f"         .year = {now.year}")
print(f"        .month = {now.month}")
print(f"          .day = {now.day}")
print(f"    .weekday() = {now.weekday()}")
print(f".isocalendar() = {now.isocalendar()}") # (ISO年,ISO週番号,ISO曜日)
print(f"         .hour = {now.hour}")
print(f"       .minute = {now.minute}")
print(f"       .second = {now.second}")
print(f"  .microsecond = {now.microsecond}")
print(f"       .tzinfo = {now.tzinfo}")
print(f".strftime(...) = "+now.strftime("""\"
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
month       %%b : %b
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
microsecond %%f : %f
timezone    %%Z : %Z
            %%z : %z
\""""))

print(f"年の範囲:             {dt.MINYEAR} ~ {dt.MAXYEAR}")
print(f"この処理に要した時間: {(dto.now()-st).microseconds} マイクロ秒")

print("\r\n")
