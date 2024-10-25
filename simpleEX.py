# traditional for loop

for i in range(1, 6):
  if i % 2 == 0:
    print(f"{i} is divisible by 2")
  elif i % 3 == 0:
    print(f"{i} is divisible by 3")
  else:
    print(f"{i} is divisible by neither 2 nor 3")

# list comprehension
squares = [x ** 2 for x in range(1, 6)]
print("Squares:", squares)

# handle both integers and floats
def print_num(num):
  if isinstance(num, int):
    print(f"Integer: {num}")
  elif isinstance(num, float):
    print(f"Float: {num}")

# call the function
print_num(42)
print_num(3.14)