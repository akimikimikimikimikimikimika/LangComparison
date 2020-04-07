#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import platform
import time
from Utility import *

def Process():

	prints(f"""
		プロセスID:   {os.getpid()}

		OS:           {platform.system()}
		バージョン:   {platform.version()}
		リリース:     {platform.release()}
		プロセッサ:   {platform.machine()}
		マシン名:     {platform.machine()}
		ノード名:     {platform.node()}

		実装:         {platform.python_implementation()}
		バージョン:   {platform.python_version()}
		Cバージョン:  {sys.api_version}
		コンパイル:   {platform.python_compiler()}
		コピーライト:
		{sys.copyright}


		では,3.14秒ほど居眠りします


	""")
	time.sleep(3.14)

runningDirectly(__name__,Process)