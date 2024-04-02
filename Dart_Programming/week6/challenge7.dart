void main() {
  int n = 8;
  try {
    int z = n ~/ 0;
    print(z);
  }
  catch (e) {
    print('Error: ${e}');
  }
}