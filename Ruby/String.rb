#! /usr/bin/env ruby

print """

これから文字列を試します
(D) は破壊的変更を意味する

長さ
\"ルビー\" →
.length   = #{   "ルビー".length     }
.size     = #{   "ルビー".size       }
.bytesize = #{   "ルビー".bytesize   }
.empty?   = #{   "ルビー".empty?     }
\"\".empty? = #{   "".empty?        }

大文字/小文字の切替
\"Ruby STRING demo\" →
.upcase()     = \"#{   "Ruby STRING demo".upcase()   }\" (D: upcase!)
.downcase()   = \"#{   "Ruby STRING demo".downcase()   }\" (D: downcase!)
.capitalize() = \"#{   "Ruby STRING demo".capitalize()   }\" (D: capitalize!)
.swapcase()   = \"#{   "Ruby STRING demo".swapcase()   }\" (D: swapcase!)

区切り文字列で区切る
\"abracadabra\" →
.partition(\"br\")  = #{   "abracadabra".partition("br")    }
.rpartition(\"br\") = #{   "abracadabra".rpartition("br")   }
.split(\"br\")      = #{   "abracadabra".split("br")        }

文字列を揃える
\"align\" →
.ljust(11,\"-\")  = \"#{   "align".ljust(11,"-")   }\" (D: ljust!)
.rjust(11,\"-\")  = \"#{   "align".rjust(11,"-")   }\" (D: rjust!)
.center(11,\"-\") = \"#{   "align".center(11,"-")   }\"

前後の空白の除去
\"   redundant   \" →
.strip()  = \"#{   "   redundant   ".strip()    }\" (D: strip!)
.lstrip() = \"#{   "   redundant   ".lstrip()   }\" (D: lstrip!)
.rstrip() = \"#{   "   redundant   ".rstrip()   }\" (D: rstrip!)

\"strings\".chop() = \"#{   "strings".chop()   }\" (D: chop!)

先頭の文字を取り出す
\"string\".chr()   = \"#{   "string".chr()   }\"

文字列の反転
\"strings\".reverse = \"#{   "strings".reverse   }\" (D: reverse!)

文字列の挿入
\"ええ すごいわ ええ\" →
.insert(7,\"ね\")        = \"#{   "ええ すごいわ ええ".insert(7,"ね")   }\" (D)
.prepend(\"へ\")         = \"#{   "ええ すごいわ ええ".prepend("へ")   }\" (D)

文字列の削除
.delete(\"わ\")          = \"#{   "ええ すごいわ ええ".delete("わ")   }\" (D: delete!)
.delete_prefix(\"ええ\") = \"#{   "ええ すごいわ ええ".delete_prefix("ええ")   }\" (D: delete_prefix!)
.delete_suffix(\"ええ\") = \"#{   "ええ すごいわ ええ".delete_suffix("ええ")   }\" (D: delete_suffix!)

連続する文字を短縮
\"breeze\".squeeze(\"e\") = \"#{   "breeze".squeeze("e")   }\" (D: squeeze!)

文字の置換
\"smell\".tr(\"ms\",\"wd\") = \"#{   "smell".tr("ms","wd")   }\" (D: tr!)

検索
\"abracadabra\" →
.include?(\"a\")    = #{   "abracadabra".include?("a")       }
.start_with?(\"a\") = #{   "abracadabra".start_with?("a")    }
.end_with?(\"a\")   = #{   "abracadabra".end_with?("a")      }
.count(\"a\")       = #{   "abracadabra".count("a")          }
.index(/..ad/)    = #{   "abracadabra".index(/..ad/)   } (先頭から位置検索)
.rindex(/..ad/)   = #{   "abracadabra".rindex(/..ad/)   } (末尾から位置検索)
.scan(/a.+a/)     = #{   "abracadabra".scan(/a.{1,2}a/)        }

文字列の結合
\"Ru\".concat(\"by\") = \"#{   "Ru".concat("by")   }\" = \"Ru\" << \"by\" (D)

エスケープ文字を表示
\"a\\tb\\tc\".dump = #{   "a\tb\tc".dump   }

部分文字列の取り出し
\"string\" →
.slice(0) = \"#{   "string".slice(0)   }\"
.slice(1,2) = \"#{   "string".slice(1,2)   }\" (pick 2 letters from 1)
.slice(1..3) = \"#{   "string".slice(1..3)   }\" (pick 1≦x≦3)
.slice(\"ring\") = \"#{   "string".slice("ring")   }\"
.slice(\"ping\") = #{   "string".slice("ping")   }
.slice(/(.)t(.)ing/,2) = \"#{   "string".slice(/(.)t(.)ing/,2)   }\"
(D: slice!)

文字配列に変換
\"string\".chars      = #{   "string".chars        }
\"string\".bytes      = #{   "string".bytes        }
\"string\".codepoints = #{   "string".codepoints   }
\"string\".hash       = #{   "string".hash        }

エンコード
\"るびー\".encode(\"UTF-8\")   = #{   "るびー".encode("UTF-8")   }
\"Ruby\".encode(\"ASCII-8BIT\") = #{   "Ruby".encode("ASCII-8BIT")   }

""";

# エンコードが異なる文字列同士は結合や比較をすることはできない
# "string".slice(args...) = "string"[args...]

=begin
	破壊的な変更と非破壊的な変更
	非破壊的変更では,文字列に操作を加えて生じた新たな文字列を返す
	破壊的な変更では,文字列を操作し,文字列そのものを書き換える
	concat : 破壊的

=end

print "\r\n\r\n";