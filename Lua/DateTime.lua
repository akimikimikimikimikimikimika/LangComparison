#! /usr/local/bin/lua

print("\r\n\r\nこれから日付と時刻を試します\r\n\r\n")

tb=os.date("*t")
print("\r\nos.date(\"*t\")")
print("    .year = "..tb["year"])
print("   .month = "..tb["month"])
print("     .day = "..tb["day"])
print("    .wday = "..tb["wday"]) -- 1:Sun ~ 7:Sat
print("    .yday = "..tb["yday"])
print("    .hour = "..tb["hour"])
print("     .min = "..tb["min"])
print("     .sec = "..tb["sec"])
if tb["isdst"] then
	print("   .isdst = true")
else
	print("   .isdst = false")
end

print("\r\nos.date(..) = \"")
print(os.date([[
datetime    %%c : %c
date        %%D : %D = %%x
            %%F : %F
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
            %%I : %I
AM/PM       %%p : %p
minute      %%M : %M
second      %%S : %S
timezone    %%Z : %Z
            %%z : %z
]]))
print("\"")

print("\r\n")