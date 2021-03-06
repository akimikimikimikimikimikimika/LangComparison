#! /usr/bin/env ruby

require_relative "Utility.rb"

def DateTime

	# 計測開始
	st=Time.now
	# Time.now は高精度な時刻を秒単位で表す

	println """

		これから日付と時刻を試します

		現在ローカル時刻: #{Time.now.getlocal}
		現在UTC時刻:      #{Time.now.getutc}
		カスタム:         #{Time.local(1996,12,25,9,41,12,345678)}
    """

	now=Time.now
	println """
		Time.now
		.asctime = #{now.asctime}
		.to_s    = #{now.to_s}
		.year    = #{now.year}
		.month   = #{now.month} = .mon
		.day     = #{now.day}
		.wday    = #{now.wday}
		.yday    = #{now.yday}
		.hour    = #{now.hour}
		.min     = #{now.min}
		.sec     = #{now.sec}
		.usec    = #{now.usec}
		.nsec    = #{now.nsec}
		.zone    = #{now.zone}

		.strftime(...) = \"#{now.strftime("""

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

		""")}\"

	"""
	# strftime は本来
	# strftime("%H:%M") -> "9:41"
	# のように使う。ここでは対応しているトークンの一覧を表示している

	# 計測終了
	en=Time.now
	println "この処理に要した時間: #{(en-st)*1000000} マイクロ秒"

    pnl 2

end

DateTime() if runningDirectly(__FILE__)