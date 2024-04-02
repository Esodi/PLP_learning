class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);

  void studentInfo() {
    print('name: ${name}');
    print('age: ${age}');
    print('grade: ${grade}');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void teacherInfo() {
    print('name: ${name}');
    print('age: ${age}');
    print('subject: ${subject}');
  }
}

class Third {
  Student? student;
  Teacher? teacher;

  void studentValue(Student student) {
    this.student = student;
  }

  void teacherValue(Teacher teacher) {
    this.teacher = teacher;
  }

  void student_info() {
    student!.studentInfo();
  }

  void teacher_info() {
    teacher!.teacherInfo();
  }
}

void main() {
  Student std = new Student('Method', 22, 'A');
  Teacher tch = new Teacher('alumni', 30, 'dart');

  Third obj1 = new Third();

  obj1.studentValue(std);
  obj1.teacherValue(tch);

  obj1.student_info();
  obj1.teacher_info();
}