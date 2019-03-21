#! /usr/local/bin/pwsh

$st=Get-Date;

@"

これから日付と時刻を試します

現在時刻: $(Get-Date)

Get-Date
.DateTime    = $((Get-Date).DateTime)
.Year        = $((Get-Date).Year)
.Month       = $((Get-Date).Month)
.Date        = $((Get-Date).Date)
.Day         = $((Get-Date).Day)
.DayOfWeek   = $((Get-Date).DayOfWeek)
.DayOfYear   = $((Get-Date).DayOfYear)
.TimeOfDay   = $((Get-Date).TimeOfDay)
.Hour        = $((Get-Date).Hour)
.Minute      = $((Get-Date).Minute)
.Second      = $((Get-Date).Second)
.Millisecond = $((Get-Date).Millisecond)
.Ticks       = $((Get-Date).Ticks)
.Kind        = $((Get-Date).Kind)

.ToString()           = `"$((Get-Date).ToString())`"
.ToLongDateString()   = `"$((Get-Date).ToLongDateString())`"
.ToLongTimeString()   = `"$((Get-Date).ToLongTimeString())`"
.ToShortDateString()  = `"$((Get-Date).ToShortDateString())`"
.ToShortTimeString()  = `"$((Get-Date).ToShortTimeString())`"
.ToOADate()           = $((Get-Date).ToOADate())
.ToFileTime()         = $((Get-Date).ToFileTime())
.ToFileTimeUtc()      = $((Get-Date).ToFileTimeUtc())
.ToLocalTime()        = $((Get-Date).ToLocalTime())
.ToUniversalTime()    = $((Get-Date).ToUniversalTime())

"@;
$formats=(Get-Date).GetDateTimeFormats() -join "`",`r`n`""
".GetDateTimeFormats() = [`r`n`"$formats`"`r`n]";
@"

Get-Date -DisplayHint
   DateTime: $(Get-Date -DisplayHint DateTime)
   Date    : $(Get-Date -DisplayHint Date)
       Time: $(Get-Date -DisplayHint Time)

Get-Date -UFormat = `"
$(Get-Date -UFormat @"
datetime    %%c : %c
date        %%D : %D
            %%x : %x
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
minute      %%M : %M
second      %%S : %S
UNIX epoch  %%s : %s
timezone    %%Z : %Z
"@)
`"
"@;
<#
    Get-Date -UFormat は本来
        Get-Date -UFormat "%H:%M" -> "9:41"
    のように使う。ここでは対応しているトークンの一覧を表示している
#>

$fdt=(Get-Date)
@"

Get-Date -Format = `"
datetime       g : $($fdt.ToString('g') <# general #>)
               G : $($fdt.ToString('G') <# general #>)
               f : $($fdt.ToString('f') <# full #>)
               F : $($fdt.ToString('F') <# full #>)
               U : $($fdt.ToString('U') <# full, UTC #>)
               O : $($fdt.ToString('O') <# roundtrip #>)
               R : $($fdt.ToString('R') <# RFC1123 #>)
               s : $($fdt.ToString('s') <# sortable #>)
               u : $($fdt.ToString('u') <# sortable, UTC #>)
date           d : $($fdt.ToString('d'))
               D : $($fdt.ToString('D'))
               Y : $($fdt.ToString('Y') <# year/month #>)
               M : $($fdt.ToString('M') <# month/date #>)
time           t : $($fdt.ToString('t'))
               T : $($fdt.ToString('T'))
year        yyyy : $($fdt.ToString('yyyy'))
           yyyyy : $($fdt.ToString('yyyyy'))
             yyy : $($fdt.ToString('yyy'))
              yy : $($fdt.ToString('yy'))
               y : $($fdt.ToString('%y'))
month       MMMM : $($fdt.ToString('MMMM'))
             MMM : $($fdt.ToString('MMM'))
              MM : $($fdt.ToString('MM'))
               M : $($fdt.ToString('%M'))
day           dd : $($fdt.ToString('dd'))
               d : $($fdt.ToString('%d'))
weekday      ddd : $($fdt.ToString('ddd'))
            dddd : $($fdt.ToString('dddd'))
hour          HH : $($fdt.ToString('HH'))
               H : $($fdt.ToString('%H'))
              hh : $($fdt.ToString('hh'))
               h : $($fdt.ToString('%h'))
AM/PM         tt : $($fdt.ToString('tt'))
               t : $($fdt.ToString('%t'))
minute        mm : $($fdt.ToString('mm'))
               m : $($fdt.ToString('%m'))
second        ss : $($fdt.ToString('ss'))
               s : $($fdt.ToString('%s'))
milli/micro    f : $($fdt.ToString('%f'))
               F : $($fdt.ToString('%F'))
              ff : $($fdt.ToString('ff'))
              FF : $($fdt.ToString('FF'))
             fff : $($fdt.ToString('fff'))
             FFF : $($fdt.ToString('FFF'))
            ffff : $($fdt.ToString('ffff'))
            FFFF : $($fdt.ToString('FFFF'))
           fffff : $($fdt.ToString('fffff'))
           FFFFF : $($fdt.ToString('FFFFF'))
          ffffff : $($fdt.ToString('ffffff'))
          FFFFFF : $($fdt.ToString('FFFFFF'))
         fffffff : $($fdt.ToString('fffffff'))
         FFFFFFF : $($fdt.ToString('FFFFFFF'))
timezone       K : $($fdt.ToString('%K'))
               z : $($fdt.ToString('%z'))
              zz : $($fdt.ToString('zz'))
             zzz : $($fdt.ToString('zzz'))
`"
"@;
<#
    Get-Date -Format は本来
        Get-Date -Format "H:m" -> "9:41"
    のように使う。ここでは対応しているトークンの一覧を表示している
#>
<#
    本来は, Get-Date -Format "..." とすべきであるが, Dateオブジェクトが取得されている時は, (Dateオブジェクト).ToString("...") でもフォーマットできる
#>

"この処理に要した時間: $(-$st.Subtract((Get-Date)).Milliseconds) ミリ秒`r`n";

"`r`n";