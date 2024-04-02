import 'dart:io';

num sumOfNumbers(num a, num b) {
  return a + b;
}

void main() {
  print('Enter the 1st no: ');
  String a = stdin.readLineSync()!;
  print('Enter the 2nd no: ');
  String b = stdin.readLineSync()!;

  int A = int.parse(a);
  int B = int.parse(b);

  num total = sumOfNumbers(A, B);

  print('Sum: ${total}');
}