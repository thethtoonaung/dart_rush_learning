//
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
  int? age = 24;

  void eat() {
    print("$name can eat");
  }

  void info() {
    print("The person Name is $name");
  }
}

class Student extends Person {
  Student() {
    print("parent\'s info is");
    super.info(); // Super ka Parent class htel ka method ko bal khaw tar
    print("child\'s info is ");
    this.info(); // this ka child class htel ka methoid ko khaw tar // this  net ma ray lal ya
    print("parent variable age is ${super.age}");
    print("child variable age is ${this.age}");
    print("-----------");
  }

  String? major;

  @override
  int? age = 30;

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
