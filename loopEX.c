#include <stdio.h>

void print_int(int num) {
  printf("Integer: %d\n", num);
}

void print_float(float num) {
  printf("Float: %.2f\n", num);
}

int main() {
  int i = 1;

  // while loop
  while (i <= 5) {
    if (i % 2 == 0) {
      printf("%d is even\n", i);
    } else {
      printf("%d is odd\n", i);
    }
    i++;
  }

  // simulate overloading
  print_int(42);
  print_float(3.14);

  // type conversion int-float
  int num = 42;
  float converted = (float) num;
  printf("Converted int to float: %.2f\n", converted);

  // type conversion float-int
  float pi = 3.14159;
  int truncated = (int) pi;
  printf("Converted float to int: %d\n", truncated);

  return 0;
  
}