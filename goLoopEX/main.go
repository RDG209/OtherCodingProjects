package main

import "fmt"

// simulated overloading using seperate function names
func printInt(num int) {
	fmt.Println("Integer: ", num)
}

func printFloat(num float64) {
	fmt.Println("Float: ", num)
}

func main() {
	// traditional for loop
	for i := 1; i <= 5; i++ {
		if i%2 == 0 {
			fmt.Println(i, "is divisible by 2")
		} else if i%3 == 0 {
			fmt.Println(i, "is divisible by 3")
		} else {
			fmt.Println(i, "is divisible by neither 2 nor 3")
		}
	}

	// simulated overloading
	printInt(42)
	printFloat(3.14159)

	// tpye conversion int-float
	var num int = 10
	var converted float64 = float64(num)
	fmt.Println("Converted int to float: ", converted)

	// type conversion float-int
	var pi float64 = 3.14159
	var truncated int = int(pi)
	fmt.Println("Converted float to int:", truncated)
}
