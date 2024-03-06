void main()
{
  //integer data type
  int age = 22;

  //double data type
  double gpa = 4.7;

  //string data type
  String name = 'Method';

  //printing the results based on int, double and string data type
  print('My name is $name, i have $age years old and my gpa is $gpa'); 

  //list datatype and printing one of its members
  List<String> names = ['john', 'fred', 'grace', 'muntasir'];
  print(names[2]); 

  //map data type and printing one of its members
  Map<String, int> students = {'john': 22, 'fred': 13, 'grace':31, 'muntasir': 16};
  final fAge = students['fred'];
  print("fred age is $fAge");
}