#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

print(f"""

これから文字列を試します

長さ
len("パイソン") = {len("パイソン")}

大文字/小文字の切替
"Python STRING demo" →
.upper()      = "{"Python STRING demo".upper()}"
.lower()      = "{"Python STRING demo".lower()}"
.title()      = "{"Python STRING demo".title()}"
.capitalize() = "{"Python STRING demo".capitalize()}"
.swapcase()   = "{"Python STRING demo".swapcase()}"

"Ich heiße Python".casefold() = "{"Ich heiße Python".casefold()}" (小文字化 + 変換)

バイトに変換
.encode() = {"Python STRING demo".encode()}

文字列を揃える
"align" →
.ljust(11,"-")  = "{"align".ljust(11,"-") }" (-で埋める左端揃え)
.rjust(11,"-")  = "{"align".rjust(11,"-") }" (-で埋める右端揃え)
.center(11,"-") = "{"align".center(11,"-")}" (-で埋める中央揃え)

区切り文字列で区切る
"abracadabra" →
.partition("br")  = {"abracadabra".partition("br")}
.rpartition("br") = {"abracadabra".rpartition("br")}
.split("br")      = {"abracadabra".split("br")}

前後の空白の除去
"   redundant   " →
.strip()  = "{"   redundant   ".strip()}"
.lstrip() = "{"   redundant   ".lstrip()}"
.rstrip() = "{"   redundant   ".rstrip()}"

指定した文字を含む前後の文字列の除去
"ええ すごいわ ええ" →
.strip(" え")  = "{"ええ すごいわ ええ".strip(" え")}" (左右を取り除く)
.lstrip(" え") = "{"ええ すごいわ ええ".lstrip(" え")}" (左を取り除く)
.rstrip(" え") = "{"ええ すごいわ ええ".rstrip(" え")}" (右を取り除く)

文字列の反転
"strings"[::-1] = "{"strings"[::-1]}"

""")

print("\r\n")
