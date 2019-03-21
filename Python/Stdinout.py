#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import sys

print("こんにちは。私の名前はPython,即ち蛇です。")
print("あなたのことを教えてください")

aboutYou = input("あなたは...")

print(f"あなたは {aboutYou} ですね。わかりました。\r\n")
print("\r\nこれから幾つかの出力の仕方を披露しますね。")
print("後ろに改行を付けます")
print("後ろに改行を付けません。",end="")
print("変なものも付けられます",end="☆")
print("それから...")
sys.stdout.write("こんな出力も可能です。改行しません。")
sys.stderr.write("たまにはエラーも出したくなります")
print("入力してみて (改行してからCtrl+Dで終了)")
sys.stdin.read()
print("以上です")

print("\r\n")