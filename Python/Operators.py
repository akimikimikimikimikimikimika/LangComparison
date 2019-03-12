#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

print("\r\nこれから演算子を試します\r\n")

print("\r\n算術演算子")
print(f"24  + 5 = {   24 +5   }")
print(f"24  - 5 = {   24 -5   }")
print(f"24  * 5 = {   24 *5   }")
print(f"24  / 5 = {   24 /5   }")
print(f"24 // 5 = {   24//5   }") # 商を整数にする除算
print(f"24  % 5 = {   24 %5   }")
print(f"24 ** 5 = {   24**5   }")

print("\r\n比較演算子")
print(f"24  > 5 = {   24 >5   }")
print(f"24 >= 5 = {   24>=5   }")
print(f"24  < 5 = {   24 <5   }")
print(f"24 <= 5 = {   24<=5   }")
print(f"24 == 5 = {   24==5   }") # Equal
print(f"24 != 5 = {   24!=5   }") # Not equal

print("\r\n同一物か確認")
a="Object"
print(f"a   is   a = {   a   is   a   }")
print(f"a is not a = {   a is not a   }")

print("\r\n論理演算子")
print(f"True and False = {   True and False   }")
print(f"True  or False = {   True  or False   }")
print(f"     not False = {        not False   }")

print("\r\n文字列演算子")
print(f"\"abc\" + \"def\" = \"{   'abc' + 'def'   }\"")
print(f"\"The word “Python” has %d letters\" % 6 = \"{   'The word “Python” has %d letters' % 6   }\"")

print("\r\n")
