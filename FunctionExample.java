public class FunctionExample {
  public int square(int n) {
    return n*n;
  }

  public double square(double n) {
    return n*n;
  }

  public int factorial(int n) {
    if (n <= 1) return 1;
    return n* factorial(n - 1);
  }

  public static void main(String[] args) {
    FunctionExample example = new FunctionExample();
    System.out.println("Square of 4 (int): " + example.square(4));
    System.out.println("Square of 4.5 (double): " + example.square(4.5));
    System.out.println("Factorial of 5: " + example.factorial(5));
  }
}