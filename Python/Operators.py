#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

def main():

    print("\nこれから演算子を試します\n")

    print("\n算術演算子")
    print("24  + 5 = "+str(   24 +5   ))
    print("24  - 5 = "+str(   24 -5   ))
    print("24  * 5 = "+str(   24 *5   ))
    print("24  / 5 = "+str(   24 /5   ))
    print("24 // 5 = "+str(   24//5   )+" (商を整数にする除算)")
    print("24  % 5 = "+str(   24 %5   ))
    print("24 ** 5 = "+str(   24**5   ))

    print("\n比較演算子")
    print("24  > 5 = "+str(   24 >5   ))
    print("24 >= 5 = "+str(   24>=5   ))
    print("24  < 5 = "+str(   24 <5   ))
    print("24 <= 5 = "+str(   24<=5   ))
    print("24 == 5 = "+str(   24==5   ))
    print("24 != 5 = "+str(   24!=5   ))

    print("\n同一物か確認")
    a="Object"
    print("a   is   a = "+str(   a   is   a   ))
    print("a is not a = "+str(   a is not a   ))

    print("\n論理演算子")
    print("True and False = "+str(   True and False   ))
    print("True  or False = "+str(   True  or False   ))
    print("     not False = "+str(        not False   ))
