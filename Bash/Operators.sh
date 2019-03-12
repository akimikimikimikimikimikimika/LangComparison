#! /usr/local/bin/bash

echo
echo これから演算子を試します
echo
echo

echo 算術演算子
echo "24  + 5 = "$((   24 +5   ))
echo "24  - 5 = "$((   24 -5   ))
echo "24  * 5 = "$((   24 *5   ))
echo "24  / 5 = "$((   24 /5   ))
echo "24  % 5 = "$((   24 %5   ))
echo "24 ** 5 = "$((   24**5   ))
echo
echo 比較演算子
echo "24  > 5 = "$((   24 >5   ))
echo "24 >= 5 = "$((   24>=5   ))
echo "24  < 5 = "$((   24 <5   ))
echo "24 <= 5 = "$((   24<=5   ))
echo "24 == 5 = "$((   24==5   ))
echo "24 != 5 = "$((   24!=5   ))
echo
echo 論理演算子
echo "1 & 0 = "$((   1 & 0   ))
echo "1 | 0 = "$((   1 | 0   ))
echo "  ! 0 = "$((     ! 0   ))
echo
echo 三項演算子
echo "1 ? \"yes\" : \"no\" → "$((   1?"yes":"no"   ))
echo "0 ? \"yes\" : \"no\" → "$((   0?"yes":"no"   ))
# 使い方: <条件>?<真の場合の値>:<偽の場合の値>
echo
echo 文字列比較演算子
echo "\"abc\" == \"def\" = "$((   "abc"=="def"   ))
echo "\"abc\" != \"def\" = "$((   "abc"!="def"   ))
echo "\"abc\" <  \"def\" = "$((   "abc"< "def"   ))
echo "\"abc\" <= \"def\" = "$((   "abc"<="def"   ))
echo "\"abc\" >  \"def\" = "$((   "abc"> "def"   ))
echo "\"abc\" >= \"def\" = "$((   "abc">="def"   ))
echo
echo "算術演算子 (bcコマンド, scale=1)"
echo "24 + 5 = "`echo "scale=1;24+5" | bc`
echo "24 - 5 = "`echo "scale=1;24-5" | bc`
echo "24 * 5 = "`echo "scale=1;24*5" | bc`
echo "24 / 5 = "`echo "scale=1;24/5" | bc`
echo "24 % 5 = "`echo "scale=1;24%5" | bc`
echo "24 ^ 5 = "`echo "scale=1;24^5" | bc`
echo
echo "比較演算子 (bcコマンド)"
echo "24 >  5 = "`echo "24> 5" | bc`
echo "24 >= 5 = "`echo "24>=5" | bc`
echo "24 <  5 = "`echo "24< 5" | bc`
echo "24 <= 5 = "`echo "24<=5" | bc`
echo "24 == 5 = "`echo "24==5" | bc`
echo "24 != 5 = "`echo "24!=5" | bc`
echo
echo "論理演算子 (bcコマンド)"
echo "1 && 0 = "`echo "1 && 0" | bc`
echo "1 || 0 = "`echo "1 || 0" | bc`
echo "   ! 0 = "`echo "   ! 0" | bc`

echo
echo