dynamic getFirstElement(List l)
{
  return l[0];
}

void main()
{
  List<num> numbers = [54, 76, 85, 3, 1, 9, 8.43, 1.3];
  List<String> names = ['frida', 'clara', 'prince'];
  List<bool> onezero = [true, false, false, true];

  final element = getFirstElement(numbers);
  print("The first element of $numbers is $element");

  final element1 = getFirstElement(names);
  print("The first element of $names is $element1");

  final element2 = getFirstElement(onezero);
  print("The first element of $onezero is $element2");
}