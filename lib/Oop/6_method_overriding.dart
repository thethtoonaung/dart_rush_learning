// parent class htel mar shi tet method twe ko
// -- child class ka nay modify chin yin Method Override
// that is call Polymorphism

void main() {
  Student student = Student();
  student.name = "aa";
  student.age = 26;
  student.major = "Math";
  student.info();
  student.eat();
  student.study();

  // Student std = Person(); // can't use
  Person pp = Student(); // can use
}

class Person {
  String? name;
  int? age;

  void eat() {
    print("$name can eat");
  }

  void info() {
    print("The person Name is $name");
  }
}

class Student extends Person {
  String? major;
  void study() {
    print("$name is studying $major");
  }

  @override // method override
  void info() {
    print("The Student name is $name age is $age major is $major");
  }
}

class UniversityStudent extends Student {
  void partTimeJob() {
    print("$name is doing part time");
  }
}
