//
void main() {
  // UniversityStudent student = UniversityStudent();
  // Or
  UniversityStudent student = UniversityStudent("Mg Mg");
}

class Person {
  Person() {
    print("this is person constructor");
  }
}

class Student extends Person {
  Student(String name) {
    print("this is student constructor and my name is $name");
  }
}

// class UniversityStudent extends Student {
//   UniversityStudent()  : super("Mg Mg"){
//     print("this is university student constructor");
//   }
// }
// Or
class UniversityStudent extends Student {
  UniversityStudent(String name)  : super(name){
    print("this is university student constructor");
  }
}


