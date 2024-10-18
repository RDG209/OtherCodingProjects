#include <stdio.h>

int main(void) {
  printf("Hello, World!\n");

  int num = 42;
  float pi = 3.14;
  char letter = 'C';
  char name[] = "John";

  printf("Integer: %d\n", num);
  printf("Float: %.2f\n", pi);
  printf("Character: %c\n", letter);
  printf("String: %s\n", name);

  return 0;
}