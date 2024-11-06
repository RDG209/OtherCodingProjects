package main

import (
	"fmt"
)

func fibonacci(n int) int {
	if n <= 1 {
		return n
	}
	return fibonacci(n-1) + fibonacci(n-2)
}

func squareInt(n int) int {
	return n * n
}

func main() {
	fmt.Println("Square of 4:", squareInt(4))
	fmt.Println("Fibonacci of 5:", fibonacci(5))
}