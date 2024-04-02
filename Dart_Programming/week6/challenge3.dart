import 'dart:io';
void main() {
  print('What is your fav color?');
  print('1. Red');
  print('2. Green');
  print('3. Blue');
  print("Enter your choice: ");
  String n = stdin.readLineSync()!;
  int i = int.parse(n);
  switch(i) {
    case 1:
    print('you choose red');
    break;
    case 2:
    print('you choose green');
    break;
    case 3:
    print('you choose blue');
    break;
    default:
    print('invalid choice');
  }
}