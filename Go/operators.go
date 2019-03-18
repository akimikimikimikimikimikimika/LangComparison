package main

import "fmt"

func operators() {
	fmt.Println("\r\nこれから演算子を試します\r\n")

	fmt.Println("\r\n算術演算子")
	fmt.Println("24  +5 = ",24  +5)
	fmt.Println("24  -5 = ",24  -5)
	fmt.Println("24  *5 = ",24  *5)
	fmt.Println("24.0/5 = ",24.0/5)
	fmt.Println("24  %5 = ",24  %5)

	fmt.Println("\r\n論理演算子")
	fmt.Println("24 <5 = ",24 <5)
	fmt.Println("24<=5 = ",24<=5)
	fmt.Println("24 >5 = ",24 >5)
	fmt.Println("24>=5 = ",24>=5)
	fmt.Println("24==5 = ",24==5)
	fmt.Println("24!=5 = ",24!=5)
}