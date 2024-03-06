num addTwo(num a, num b)
{
  return a + b;
}
void main()
{
  int a = 45;
  int b = 86;
  num sum = addTwo(a, b);
  print("Sum of $a and $b is $sum");

  double x = 3.5;
  double y = 78.23;
  sum = addTwo(x, y);
  print("Sum of $x and $y is $sum");
}