int stringLength(String a)
{
  return a.length;
}

void main()
{
  String name = 'manofwar';
  int len = stringLength(name);

  print("The length of $name is $len");
}