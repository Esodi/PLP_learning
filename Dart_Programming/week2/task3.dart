num multiplyTwo(num a, num b)
{
  return a * b;
}

void main()
{
  int a = 54;
  double b = 5.23;
  num prod = multiplyTwo(a, b);

  print("The product of $a and $b is $prod");
}