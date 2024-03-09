import 'dart:io';

void main()
{
  print('Enter a number: ');
  String num = stdin.readLineSync()!;
  int numb = int.parse(num);

  if (numb > 10)
  {
    print('Your number is greater than 10');
  }
  else if (numb < 10)
  {
    print('Your number is less than 10');
  }
  else 
  {
    print('Your number is equal to 10');
  }
}