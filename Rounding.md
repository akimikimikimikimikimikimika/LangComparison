# 実数の丸め

`round` は通常実数を最も近い整数に丸める操作である。
ところが,隣接する整数と等間隔にある `n+0.5` に対する挙動が言語によって異なるので,ここにまとめる。

## 手法
`round(n+0.5)` を `n` にするか `n+1` にするか決める方法として以下のものがある
- **away**
	`n` と `n+1` のうち,0から離れている方を選ぶ
- **closer**
	`n` と `n+1` のうち,0に近い方を選ぶ
- **even**
	`n` と `n+1` のうち,偶数の方を選ぶ
- **odd**
	`n` と `n+1` のうち,奇数の方を選ぶ
- **up**
	常に `n+1` (大きい方) を選ぶ

つまり,0近辺の値であれば

| 手法 | `-2.5` | `-1.5` | `-0.5` | `+0.5` | `+1.5` | `+2.5` |
|:-|:-:|:-:|:-:|:-:|:-:|:-:|
| **away** | `-3` | `-2` | `-1` | `+1` | `+2` | `+3` |
| **closer** | `-2` | `-1` | `0` | `0` | `+1` | `+2` |
| **even** | `-2` | ` -2` | `0` | `0` | `+2` | `+2` |
| **odd** | `-3` | `-1` | `-1` | `+1` | `+1` | `+3` |
| **up** | `-2` | ` -1` | `0` | `+1` | `+2` | `+3` |

## 全体的な概況

- `round` 関数は概ね **away** であることが多い。まれにカスタマイズできる場合がある。
- フォーマットで丸める場合はCの `sprintf` を流用しているためか概ね **even** であることが多い。

## 各言語の実装

`"%fmt"` は `"%.0f"` や `"%.0e"` などのCに由来する記法を使うことを示しており, `%f`, `%e`, `%g` の何れにおいても同じ丸め方をする。
`"{:fmt}"` は `"{:.0}"` や `"{:.0e}"` などのPythonのような記法を示しており,どちらも同じ丸め方である。

- Swift

	傾向通り

	| 関数 | 手法 |
	|:-|:-:|
	| `round(x)` | **away** |
	| `x.rounded()` | **away** |
	| `String(format:"%fmt",x)` | **even** |

	`x.rounded(method)` は引数 `method` で手法を指定することができる

	| `method` | 手法 |
	|:-|:-:|
	| `.toNearestOrAwayFromZero` | **away** |
	| `.toNearestOrEven` | **even** |
	| `.towardZero` | `trunc` 関数と同様 |
	| `.awayFromZero` | `trunc` 関数の反対 |
	| `.down` | `floor` 関数と同様 |
	| `.up` | `ceil` 関数と同様 |

- Ruby

	傾向通り

	| 関数 | 手法 |
	|:-|:-:|
	| `x.round(digit)` | **away** |
	| `sprintf("%fmt",x)` | **even** |

	`x.round(digit=0,half: method)` は引数 `method` で手法を指定することができる

	| `method` | 手法 |
	|:-|:-:|
	| `:up` or `nil` | **away** |
	| `:down` | **closer** |
	| `:even` | **even** |

- PHP

	傾向通り

	| 関数 | 手法 |
	|:-|:-:|
	| `round($x)` | **away** |
	| `sprintf("%fmt",$x)` | **even** |

	`round($x,$digit=0,$method)` は引数 `$method` で手法を指定することができる

	| `$method` | 手法 |
	|:-|:-:|
	| `PHP_ROUND_HALF_UP` | **away** |
	| `PHP_ROUND_HALF_DOWN` | **closer** |
	| `PHP_ROUND_HALF_EVEN` | **even** |
	| `PHP_ROUND_HALF_ODD` | **odd** |

- Python

	フォーマットも **even** であることに注意

	| 関数 | 手法 |
	|:-|:-:|
	| `round(x,digit)` | **even** |
	| `"{:fmt}".format(x)` | **even** |

- JavaScript

	全く傾向通りでない

	| 関数 | 手法 |
	|:-|:-:|
	| `Math.round(x)` | **up** |
	| `x.toFixed(digit)` | **away** |
	| `x.toPrecision(digit)` | **away** |
	| `x.toExponential(digit)` | **away** |

- Java

	全く傾向通りでない

	| 関数 | 手法 |
	|:-|:-:|
	| `Math.round(x)` | **up** |
	| `String.format("%fmt",x)` | **away** |

- C/C++

	傾向通り

	| 関数 | 手法 |
	|:-|:-:|
	| `round(x)` | **away** |
	| `sprintf("%fmt",x)` | **even** |
	| `setprecision(n) << x` | **even** |

- Fortran

	傾向通り

	| 関数 | 手法 |
	|:-|:-:|
	| `nint(x)` | **away** |

- Go

	傾向通り

	| 関数 | 手法 |
	|:-|:-:|
	| `math.Round(x)` | **away** |
	| `math.RoundToEven(x)` | **even** |
	| `sprintf("%fmt",x)` | **even** |

- Rust

	`format!` で引っ掛かりそうである

	| 関数 | 手法 |
	|:-|:-:|
	| `x.round()` | **away** |
	| `format!("{:fmt}",x)` | 特殊 |

	`format!` は概ね **even** なのであるが, ±0.5 は 0 にはならず, **away** のように ±1 になる。

- PowerShell

	傾向と真逆

	| 関数 | 手法 |
	|:-|:-:|
	| `[Math]::Round($x)` | **even** |
	| `Write-Output("{0:0.}" -f $x)` | **away** |

	`[Math]::Round($x,$digit=0,$method)` は引数 `$method` で手法を指定することができる

	| `$method` | 手法 |
	|:-|:-:|
	| `[MidpointRounding]::ToEven` | **even** |
	| `[MidpointRounding]::AwayFromZero` | **away** |

- Julia

	傾向と真逆

	| 関数 | 手法 |
	|:-|:-:|
	| `round(x)` | **even** |
	| `@sprintf("%fmt",x)` | **away** |

	`round(x,method)` は引数 `method` で手法を指定することができる

	| `method` | 手法 |
	|:-|:-:|
	| `RoundNearest` | **even** |
	| `RoundNearestTiesAway` | **away** |
	| `RoundNearestTiesUp` | **up** |
	| `RoundToZero` | `trunc` 関数と同様 |
	| `RoundDown` | `floor` 関数と同様 |
	| `RoundUp` | `ceil` 関数と同様 |

- Lua

	傾向通り

	| 関数 | 手法 |
	|:-|:-:|
	| `string.format("%fmt",x)` | **even** |

- Shell

	傾向通り

	| 関数 | 手法 |
	|:-|:-:|
	| `printf "%fmt" $x` | **even** |

- 表計算

	傾向通りではない  
	両方で統一している模様

	| 関数 | 手法 |
	|:-|:-:|
	| `ROUND(x,digit)` | **away** |
	| セルのフォーマット | **away** |

## 不正確さ

これらの丸める手法は必ずしも守られてはいない。
例えば, **even** の手法をとり,小数点以下の桁数が指定できるPythonの `round` 関数を利用する場合, `round(2.675,2)` は `2.68` ではなく `2.67` になる。
これは,実数が2進数で扱われている都合上, `2.675` が厳密にその値として保管されていないことにより,バグではない。
実際に計算すると,
```Python
(2.68-2.675)+(2.67-2.675) ≈ 4.4e-16 > 0
```
となっており, 2.675 は両方に等間隔ではなく, 2.67 に少し近い。