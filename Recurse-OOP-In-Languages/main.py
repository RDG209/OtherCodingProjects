class Animal:
  def make_sound(self):
      raise NotImplementedError("Subclass must implement abstract method")

class Dog(Animal):
  def make_sound(self):
      return "Woof!"

class Cat(Animal):
  def make_sound(self):
      return "Meow!"

def fibonacci(n):
  if not isinstance(n, int) or n < 0:
      raise ValueError("Input must be a non-negative integer")
  if n <= 1:
      return n
  return fibonacci(n - 1) + fibonacci(n - 2)

def process_data(data):
  if isinstance(data, int):
      print("It's an integer:", data)
  elif isinstance(data, str):
      print("It's a string:", data)
  else:
      print("Unknown type")

if __name__ == "__main__":
  dog = Dog()
  cat = Cat()
  print("Dog says:", dog.make_sound())
  print("Cat says:", cat.make_sound())

  try:
      print("Fibonacci of 5:", fibonacci(5))
      print("Fibonacci of -1:", fibonacci(-1))
  except ValueError as e:
      print(e)

  process_data(10)
  process_data("Hello")
