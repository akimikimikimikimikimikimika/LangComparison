object Operators {
	
	def main(args: Array[String]):Unit = {

		println(Main.trim(s"""

			これから演算子を試します

			算術演算子
			24 + 5 = ${   24 + 5   }
			24 - 5 = ${   24 - 5   }
			24 * 5 = ${   24 * 5   }
			24 / 5 = ${   24 / 5   }
			24 % 5 = ${   24 % 5   }

			比較演算子
			24 >  5 = ${   24 >  5   }
			24 >= 5 = ${   24 >= 5   }
			24 <  5 = ${   24 <  5   }
			24 <= 5 = ${   24 <= 5   }
			24 == 5 = ${   24 == 5   }
			24 != 5 = ${   24 != 5   }

			論理演算子
			true && false = ${   true && false   }
			true || false = ${   true || false   }
			       !false = ${          !false   }

		"""))
		/*
			その他に...
			複合代入演算子 : += -= *= /= %=
				a += b は a= a + b と同義。その他も同様
		*/

		println("\r\n")

	}

}