import 'dart:io';

void main() {
  print('enter numbers separated by space');
  String n = stdin.readLineSync()!;
  List<String> lst = n.split(' ');
  int i = 0;
  List<int> lst1 = [];
  for (i = 0; i < lst.length; i++) {
    lst1.add(int.parse(lst[i]));
  }
  num max = -20000000000000;
  int j;
  for (j = 0; j < lst.length; j++) {
    if (lst1[j] > max) {
      max = lst1[j];
    }
  }
  print('The largest no: ${max}');
}