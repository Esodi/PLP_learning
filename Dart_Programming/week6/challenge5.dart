
import 'dart:io';
void main() {
  print('enter a number');
  String n = stdin.readLineSync()!;
  int i = int.parse(n);

  if (i % 2 == 0) {
    print('the number is even');
  }
  else {
    print('the number is odd');
  }
}