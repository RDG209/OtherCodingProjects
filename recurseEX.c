#include <stdio.h>

int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

void squareInt(int *num) {
  *num = (*num) * (*num);
}

int main() {
  int n = 5;
  squareInt(&n);
  printf("Square of 5: %d\n", n);
  printf("Factorial of 5: %d\n", factorial(5));
  return 0;
}