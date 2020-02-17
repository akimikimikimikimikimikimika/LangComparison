#! /usr/bin/env node

var log=`

これから数学演算を試します

進数変換
433045 = ${parseInt("433045",6)} (6進数 → 10進数)
35669  = ${(35669).toString(14)}  (10進数 → 14進数)
`; // 2~36進数に変換可能

log+=`
bin2dec 1101111101: ${   0b1101111101   }
oct2dec       1575: ${   0o1575   }
hex2dec        37d: ${   0x37d   }
`;
/*
	かつては 01575 と表記すれば,8進数表記として解釈されたが,現在は非標準である
	→ 01575 を8進数と解釈されないようにする(エラーを送出させる)には, "use strict"; を用いる。
*/

`
定数
π = ${Math.PI}
e = ${Math.E}

最大/最小
Math.min(3,4,6) = ${   Math.min(3,4,6)   }
Math.max(3,4,6) = ${   Math.max(3,4,6)   }

符号
Math.abs(+18) = ${   Math.abs(+18)   }
Math.abs(-18) = ${   Math.abs(-18)   }

数学関数
Math.sqrt(3)      = ${   Math.sqrt(3)          }
Math.cbrt(27)     = ${   Math.cbrt(27)         }
Math.exp(1.145)   = ${   Math.exp(1.145)       }
Math.expm1(1.421) = ${   Math.expm1(1.421)     } = exp(1.421)-1
Math.log(23.14)   = ${   Math.log(23.14)       }
math.log1p(22.14) = ${   Math.log1p(22.14)     } = log(22.14)+1
Math.log10(1385)  = ${   Math.log10(1385)      }
Math.log2(8.825)  = ${   Math.log2(8.825)      }
Math.sin(π/3)     = ${   Math.sin(Math.PI/3)   }
Math.cos(π/3)     = ${   Math.cos(Math.PI/3)   }
Math.tan(π/3)     = ${   Math.tan(Math.PI/3)   }
Math.asin(1)      = ${   Math.asin(1)          }
Math.acos(0.5)    = ${   Math.acos(0.5)        }
Math.atan(-1)     = ${   Math.atan(-1)         }
Math.atan2(12,5)  = ${   Math.atan2(12,5)      } (atan2(y,x))
Math.hypot(12,5)  = ${   Math.hypot(12,5)      }
Math.sinh(1.862)  = ${   Math.sinh(1.862)      }
Math.cosh(1.811)  = ${   Math.cosh(1.811)      }
Math.tanh(0.325)  = ${   Math.tanh(0.325)      }

乱数
Math.random() = ${   Math.random()   } (0≦x<1)

端数処理
Math.floor(-3.14) = ${   Math.floor(-3.14)   } (小さい方の整数へ)
Math.ceil(-3.14)  = ${   Math.ceil(-3.14)    } (大きい方の整数へ)
Math.trunc(-3.14) = ${   Math.trunc(-3.14)   } (0に近い方の整数へ)
Math.round(-3.14) = ${   Math.round(-3.14)   }
parseInt(-3.14)   = ${   parseInt(-3.14)     } (キャストはtruncする)

`;

console.log(log);