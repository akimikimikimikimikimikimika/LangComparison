#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

print(f"""

これから文字列を試します

"Python STRING demo" →
.upper()      = "{"Python STRING demo".upper()}"
.lower()      = "{"Python STRING demo".lower()}"
.title()      = "{"Python STRING demo".title()}"
.capitalize() = "{"Python STRING demo".capitalize()}"
.swapcase()   = "{"Python STRING demo".swapcase()}"

.encode()     = {"Python STRING demo".encode()}

"Ich heiße Python".casefold() = "{"Ich heiße Python".casefold()}"

"abracadabra" →
.partition("br")  = {"abracadabra".partition("br")}
.rpartition("br") = {"abracadabra".rpartition("br")}
.split("br")      = {"abracadabra".split("br")}

"   redundant   " →
.strip()  = "{"   redundant   ".strip()}"
.lstrip() = "{"   redundant   ".lstrip()}"
.rstrip() = "{"   redundant   ".rstrip()}"

"ええ すごいわ ええ" →
.strip(" え")  = "{"ええ すごいわ ええ".strip(" え")}" (左右を取り除く)
.lstrip(" え") = "{"ええ すごいわ ええ".lstrip(" え")}" (左を取り除く)
.rstrip(" え") = "{"ええ すごいわ ええ".rstrip(" え")}" (右を取り除く)

"align" →
.ljust(11,"-")  = {"align".ljust(11,"-")} (-で埋める左端揃え)
.rjust(11,"-")  = {"align".rjust(11,"-")} (-で埋める右端揃え)
.center(11,"-") = {"align".center(11,"-")} (-で埋める中央揃え)

""")

print("\r\n")
