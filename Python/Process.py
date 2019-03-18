#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import os
import time

print(f"このプロセスのIDは: {os.getpid()}")

print("\r\nでは,3.14秒ほど居眠りします\r\n")
time.sleep(3.14)