#include <stdio.h>

// This program performs division and handles errors manually
int main() {
    int numerator, denominator;

    // Input for the numerator
    printf("Enter numerator: ");
    if (scanf("%d", &numerator) != 1) {  // Check for invalid input
        printf("Error: Invalid input. Please enter an integer.\n");
        return 1;
    }

    // Input for the denominator
    printf("Enter denominator: ");
    if (scanf("%d", &denominator) != 1) {  // Check for invalid input
        printf("Error: Invalid input. Please enter an integer.\n");
        return 1;
    }

    // Check for division by zero
    if (denominator == 0) {
        printf("Error: Division by zero is not allowed.\n");
    } else {
        // Perform division and display result
        printf("Result: %d\n", numerator / denominator);
    }

    // Indicate that the operation has been completed
    printf("Operation completed.\n");

    return 0;
}
