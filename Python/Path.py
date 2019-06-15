#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import os

pt=os.path.normpath(os.path.join(os.getcwd(),__file__))

print(f"""
ホームディレクトリ:       {os.path.expanduser("~")}
カレントディレクトリ:     {os.getcwd()}

このファイルのフルパス:   {os.path.abspath(pt)}
このファイルの実行パス:   {__file__}
このファイルの名前:       {os.path.basename(pt)}
このファイルのある場所:   {os.path.dirname(pt)}
""")

print("\r\n")