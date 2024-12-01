package main

import (
	"errors"
	"fmt"
)

// Function that performs division and returns an error if needed
func divide(numerator, denominator int) (int, error) {
	if denominator == 0 {
		return 0, errors.New("division by zero is not allowed")
	}
	return numerator / denominator, nil
}

func main() {
	var numerator, denominator int
	fmt.Print("Enter numerator: ")
	fmt.Scan(&numerator)
	fmt.Print("Enter denominator: ")
	fmt.Scan(&denominator)

	// Perform division and handle errors
	result, err := divide(numerator, denominator)
	if err != nil {
		fmt.Println("Error:", err)
	} else {
		fmt.Println("Result:", result)
	}

	fmt.Println("Operation completed.")
}
