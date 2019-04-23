#! /usr/local/bin/julia

using Dates # 又は, import Dates
st=now()

dt=now()
println("""

これから日付と時刻を試します

現在ローカル時刻: $(now())
現在UTC時刻:      $(now(Dates.UTC))
カスタム:         $(DateTime(2018,8,8,9,41,12,345))

Dates
.year(now())        = $(Dates.year(dt))
.month(now())       = $(Dates.month(dt))
.day(now())         = $(Dates.day(dt))
.hour(now())        = $(Dates.hour(dt))
.minute(now())      = $(Dates.minute(dt))
.second(now())      = $(Dates.second(dt))
.millisecond(now()) = $(Dates.millisecond(dt))

.yearmonth(now())    = $(Dates.yearmonth(dt))
.monthday(now())     = $(Dates.monthday(dt))
.yearmonthday(now()) = $(Dates.yearmonthday(dt))

.quarterofyear(now())    = $(Dates.quarterofyear(dt) #= quarter/year =#)
.week(now())             = $(Dates.week(dt) #= week/year =#)
.dayofyear(now())        = $(Dates.dayofyear(dt) #= day/year =#)
.dayofquarter(now())     = $(Dates.dayofquarter(dt) #= day/quarter =#)
.dayofmonth(now())       = $(Dates.dayofmonth(dt) #= month/day =#)
.dayofweek(now())        = $(Dates.dayofweek(dt) #= day/week =#)
.daysinyear(now())       = $(Dates.daysinyear(dt))
.daysinmonth(now())      = $(Dates.daysinmonth(dt))
.dayofweekofmonth(now()) = $(Dates.dayofweekofmonth(dt) #= e.g. 4th Sunday in the month => 4  =#)
.isleapyear(now())       = $(Dates.isleapyear(dt))

.firstdayofyear(now())    = $(Dates.firstdayofyear(dt))
.lastdayofyear(now())     = $(Dates.lastdayofyear(dt))
.firstdayofquarter(now()) = $(Dates.firstdayofquarter(dt))
.lastdayofquarter(now())  = $(Dates.lastdayofquarter(dt))
.firstdayofmonth(now())   = $(Dates.firstdayofmonth(dt))
.lastdayofmonth(now())    = $(Dates.lastdayofmonth(dt))
.firstdayofweek(now())    = $(Dates.firstdayofweek(dt) #= Monday in the week =#)
.lastdayofweek(now())     = $(Dates.lastdayofweek(dt) #= Sunday in the week =#)

.monthname(now()) = "$(Dates.monthname(dt))"
.monthabbr(now()) = "$(Dates.monthabbr(dt))"
.dayname(now())   = "$(Dates.dayname(dt))"
.dayabbr(now())   = "$(Dates.dayabbr(dt))"

.Year(now())        = "$(Dates.Year(dt))"
.Month(now())       = "$(Dates.Month(dt))"
.Day(now())         = "$(Dates.Day(dt))"
.Week(now())        = "$(Dates.Week(dt))"
.Hour(now())        = "$(Dates.Hour(dt))"
.Minute(now())      = "$(Dates.Minute(dt))"
.Second(now())      = "$(Dates.Second(dt))"
.Millisecond(now()) = "$(Dates.Millisecond(dt))"

.format(now(),...) = "$(Dates.format(now(),"""

\\y\\e\\a\\r
    \\y : y
   \\y\\y : yy
  \\y\\y\\y : yyy
 \\y\\y\\y\\y : yyyy
\\y\\y\\y\\y\\y : yyyyy
    \\Y : Y
   \\Y\\Y : YY
  \\Y\\Y\\Y : YYY
 \\Y\\Y\\Y\\Y : YYYY
\\Y\\Y\\Y\\Y\\Y : YYYYY

\\m\\o\\n\\t\\h
    \\M : M
   \\M\\M : MM
  \\M\\M\\M : MMM
 \\M\\M\\M\\M : MMMM
\\M\\M\\M\\M\\M : MMMMM

\\d\\a\\y
  \\d : d   (\\d\\a\\y/\\m\\o\\n\\t\\h)
 \\d\\d : dd

\\w\\e\\e\\k\\d\\a\\y
    \\E : E
   \\E\\E : EE
  \\E\\E\\E : EEE
 \\E\\E\\E\\E : EEEE
\\E\\E\\E\\E\\E : EEEEE
    \\e : e
   \\e\\e : ee
  \\e\\e\\e : eee
 \\e\\e\\e\\e : eeee
\\e\\e\\e\\e\\e : eeeee

\\h\\o\\u\\r
 \\H : H
\\H\\H : HH

\\m\\i\\n\\u\\t\\e
 \\m : m
\\m\\m : mm

\\s\\e\\c\\o\\n\\d
    \\s : s
   \\s\\s : ss
    \\S : S
   \\S\\S : SS
  \\S\\S\\S : SSS
 \\S\\S\\S\\S : SSSS
\\S\\S\\S\\S\\S : SSSSS

"""))"
""")

en=now()
println("この処理に要した時間: $(en-st)")

println("\r\n")