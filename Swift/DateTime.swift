#! /usr/bin/env swift

import Foundation

let st=Date()

func desc(_ rawObject:Any?) -> String {
	if let o = rawObject {
		return String(describing: o)
	}
	else {
		return "nil"
	}
}

print("""

これから日付と時刻を試します

""")

let dc = Calendar.autoupdatingCurrent.dateComponents([.era,.year,.yearForWeekOfYear,.quarter,.month,.weekOfYear,.weekOfMonth,.weekday,.weekdayOrdinal,.day,.hour,.minute,.second,.nanosecond,.calendar,.timeZone], from: Date())
print("""
DateComponents(..)
.era               = \(   desc(dc.era)                 )
.year              = \(   desc(dc.year)                )
.yearForWeekOFYear = \(   desc(dc.yearForWeekOfYear)   )
.quarter           = \(   desc(dc.quarter)             )
.month             = \(   desc(dc.month)               )
.isLeapMonth       = \(   desc(dc.isLeapMonth)         )
.weekOfMonth       = \(   desc(dc.weekOfMonth)         )
.weekOfYear        = \(   desc(dc.weekOfYear)          )
.weekday           = \(   desc(dc.weekday)             )
.weekdayOrdinal    = \(   desc(dc.weekdayOrdinal)      )
.day               = \(   desc(dc.day)                 )
.hour              = \(   desc(dc.hour)                )
.minute            = \(   desc(dc.minute)              )
.second            = \(   desc(dc.second)              )
.nanosecond        = \(   desc(dc.nanosecond)          )

""")

let df = DateFormatter()
let dt = Date()

df.dateFormat = """

'era'
    'G' : G
   'GG' : GG
  'GGG' : GGG
 'GGGG' : GGGG
'GGGGG' : GGGGG

'year'
    'y' : y
   'yy' : yy
  'yyy' : yyy
 'yyyy' : yyyy
'yyyyy' : yyyyy
    'Y' : Y
   'YY' : YY
  'YYY' : YYY
 'YYYY' : YYYY
'YYYYY' : YYYYY

'quarter'
   'Q' : Q
  'QQ' : QQ
 'QQQ' : QQQ
'QQQQ' : QQQQ

'month'
    'M' : M
   'MM' : MM
  'MMM' : MMM
 'MMMM' : MMMM
'MMMMM' : MMMMM

'week'
 'w' : w  (week/year)
'ww' : ww
 'W' : W  (week/month)

'day'
  'd' : d   '(day/month)'
 'dd' : dd
  'D' : D   '(day/year)'
 'DD' : DD
'DDD' : DDD
  'F' : F   '(day/week)'
  'g' : g

'weekday'
    'E' : E
   'EE' : EE
  'EEE' : EEE
 'EEEE' : EEEE
'EEEEE' : EEEEE
    'e' : e
   'ee' : ee
  'eee' : eee
 'eeee' : eeee
'eeeee' : eeeee

'hour'
 'h' : h
'hh' : hh
 'H' : H
'HH' : HH
 'k' : k
'kk' : kk
 'K' : K
'KK' : KK
 'a' : a

'minute'
 'm' : m
'mm' : mm

'second'
    's' : s
   'ss' : ss
    'S' : S
   'SS' : SS
  'SSS' : SSS
 'SSSS' : SSSS
'SSSSS' : SSSSS
    'A' : A

"""
let ft = desc(df.string(from: dt))

df.dateFormat = """

'timezone'
    'z' : z
   'zz' : zz
  'zzz' : zzz
 'zzzz' : zzzz
    'Z' : Z
   'ZZ' : ZZ
  'ZZZ' : ZZZ
 'ZZZZ' : ZZZZ
'ZZZZZ' : ZZZZZ
    'v' : v
 'vvvv' : vvvv
    'V' : V
 'VVVV' : VVVV

"""
let ft2 = desc(df.string(from: dt))

print("""
DateFormatter.string(..) = "\(ft)\(ft2)"

""")
/*
	DateFormatter.string(from:) は本来
		df.dateFormat = "H:m"
		df.string(from:Date()) -> "9:41"
	のように使う。ここでは対応しているトークンの一覧を表示している
	DateFormatter.string(from:) はコンピュータの日付の書式設定に準拠してフォーマットされる。つまり異なる地域の書式を適用すると,異なる表示になる。
*/

print("この処理に要した時間: \(DateInterval(start: st, end: Date()).duration*1000000) マイクロ秒")

print("\r\n")