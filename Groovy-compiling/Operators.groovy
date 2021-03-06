static void main(String[] args) {

	println Main.trim("""

		これから演算子を試します

		算術演算子
		24  + 5 = ${   24  + 5   }
		24  - 5 = ${   24  - 5   }
		24  * 5 = ${   24  * 5   }
		24  / 5 = ${   24  / 5   }
		24  % 5 = ${   24  % 5   }
		24 ** 5 = ${   24 ** 5   }

		比較演算子
		24 >  5 = ${   24 >  5   }
		24 >= 5 = ${   24 >= 5   }
		24 <  5 = ${   24 <  5   }
		24 <= 5 = ${   24 <= 5   }
		24 == 5 = ${   24 == 5   }
		24 != 5 = ${   24 != 5   }

		24 <=>  5 = ${   24 <=>  5   }
		24 <=> 24 = ${   24 <=> 24   }
		5 <=> 24 = ${    5 <=> 24   }

		論理演算子
		true && false = ${   true && false   }
		true || false = ${   true || false   }
		       !false = ${          !false   }

		三項演算子
		true  ? \"yes\" : \"no\" = \"${   true  ? "yes" : "no"   }\"
		false ? \"yes\" : \"no\" = \"${   false ? "yes" : "no"   }\"

		エルビス演算子
		\"uncertain\" ?: \"default\" = \"${   "uncertain" ?: "default"   }\"
		null ?: \"default\" = \"${   null ?: "default"   }\"

	""")
	/*
		その他に...
		複合代入演算子 : += -= *= /= %= **=
			a += b は a= a + b と同義。その他も同様
	*/

	println "\r\n"

}