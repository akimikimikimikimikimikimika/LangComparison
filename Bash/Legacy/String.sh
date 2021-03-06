#! /usr/bin/env bash

text="abracadabra"

echo """

これから文字列を試します

text=\"abracadabra\"
\${#text}     = ${#text} (長さ)
\${text:2:3}  = \"${text:2:3}\" (2番目から3文字抽出)
\${text#*br}  = \"${text#*br}\" (先頭から最短で *br にマッチする部分を削除)
\${text##*br} = \"${text##*br}\" (先頭から最長で *br にマッチする部分を削除)
\${text%br*}  = \"${text%br*}\" (末尾から最短で br* にマッチする部分を削除)
\${text%%br*} = \"${text%%br*}\" (末尾から最長で br* にマッチする部分を削除)
\${text/br/<br>}  = \"${text/br/<br>}\" (先頭から1つ目の br にマッチする部分を置換)
\${text//br/<br>}  = \"${text//br/<br>}\" (全ての br にマッチする部分を置換)

"""

# ${text:2:3} で部分列を取り出す際, ${text:3-1:18/6} などと計算式を埋め込んでも構わない

printf "\r\n\r\n"