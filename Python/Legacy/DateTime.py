#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import datetime as dt
from Utility import *

dto=dt.datetime

def DateTime():

	st=dto.now()

	prints(f"""

		これから日付と時刻を試します

		現在ローカル時刻: {dto.now()}
		現在UTC時刻:      {dto.utcnow()}
		カスタム:         {dt.datetime(1994,1,1,9,41,12,345678)}
	""")

	now=dto.now()
	prints(f"""
		datetime.now()
		 .year        = {now.year}
		 .month       = {now.month}
		 .day         = {now.day}
		 .weekday()   = {now.weekday()}
		 .hour        = {now.hour}
		 .minute      = {now.minute}
		 .second      = {now.second}
		 .microsecond = {now.microsecond}
		 .tzinfo      = {now.tzinfo}

		 .isocalendar() = {now.isocalendar()} (ISO年,ISO週番号,ISO曜日)

		 .strftime(...) = \"{now.strftime('''
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
		 ''')}\"

		年の範囲: {dt.MINYEAR} ~ {dt.MAXYEAR}
	""")

	en=dto.now()
	print(f"この処理に要した時間: {(en-st).microseconds} マイクロ秒")

	pnl(2)

runningDirectly(__name__,DateTime)