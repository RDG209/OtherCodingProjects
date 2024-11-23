
abstract class Shape {
  abstract double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(double radius) {
    this.radius = radius;
  }

  double calculateArea() {
    return Math.PI * radius * radius;
  }
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(double length, double width) {
    this.length = length;
    this.width = width;
  }

  double calculateArea() {
    return length * width;
  }
}

class OverloadingExample {
  void printInfo(int num) {
    System.out.println("Integer: " + num);
  }

  void printInfo(String message) {
    System.out.println("String: " + message);
  }
}

class RecursionExample {
  int factorial(int n) {
    if (n < 0) {
      throw new IllegalArgumentException("Factorial Doesn't Work with Negatives");
    }
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }
}

public class Main {
  public static void main(String[] args) {
    Shape circle = new Circle(5);
    Shape rectangle = new Rectangle(4, 6);
    System.out.println("Circle Area: " + circle.calculateArea());
    System.out.println("Rectangle Area: " + rectangle.calculateArea());

    OverloadingExample example = new OverloadingExample();
    example.printInfo(10);
    example.printInfo("Hello, World!");

    RecursionExample recursionExample = new RecursionExample();
    System.out.println("Factorial of 5: " + recursionExample.factorial(5));

    int number = 10;
    modifyValue(number);
    System.out.println("After modifyValue: " + number);

    StringBuilder text = new StringBuilder("Original");
    modifyReference(text);
    System.out.println("After modifyReference: " + text);
    
  }

  static void modifyValue(int num) {
    num = 20;
  }

  static void modifyReference(StringBuilder sb) {
    sb.append(" Modified");
  }

}