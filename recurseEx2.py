def fibonacci(n):
  if n <= 1:
    return n
  return fibonacci(n - 1) + fibonacci(n - 2)

def display_type(value):
  if isinstance(value, int):
    print("Integer")
  elif isinstance(value, float):
    print("Float")
  elif isinstance(value, str):
    print("String")
  else:
    print("Unknown Type")

print("Fibonacci of 5:", fibonacci(5))
display_type(42)
display_type(3.14)
display_type("example")