#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import os
from Utility import *

def Path():

	pt=os.path.normpath(os.path.join(os.getcwd(),__file__))

	prints(f"""
		ホームディレクトリ:       {os.path.expanduser("~")}
		カレントディレクトリ:     {os.getcwd()}

		このファイルのフルパス:   {os.path.abspath(pt)}
		このファイルの実行パス:   {__file__}
		このファイルの名前:       {os.path.basename(pt)}
		このファイルのある場所:   {os.path.dirname(pt)}
	""")

	pnl(2)

runningDirectly(__name__,Path)