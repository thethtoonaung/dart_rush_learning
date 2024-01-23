// // Inheritance load htar tet parnet class constructor mar Parameter par yin
// // -- current class ka constructor mar lal parameter call pay ya dl
// void main() {
//   // UniversityStudent student = UniversityStudent();
//   // Or
//   UniversityStudent student = UniversityStudent("Mg Mg");
// }

// class Person {
//   Person() {
//     print("this is person constructor");
//   }
// }

// class Student extends Person {
//   Student(String name) {
//     print("this is student constructor and my name is $name");
//   }
// }

// // class UniversityStudent extends Student {
// //   UniversityStudent()  : super("Mg Mg"){
// //     print("this is university student constructor");
// //   }
// // }
// // Or
// class UniversityStudent extends Student {
//   UniversityStudent(String name)  : super(name){
//     print("this is university student constructor");
//   }
// }

class Employee {
  // Constructor
  Employee(String name, double salary) {
    print("Employee constructor");
    print("Name: $name");
    print("Salary: $salary");
  }
}

class Manager extends Employee {
  var zz = "dfdf";
  // Constructor
  Manager(String name, double salary,
      this.zz) // old constructor parameter + new const parameter
      : super(name, salary) //old constructor parameter call
  {
    print("Manager constructor");
  }
}

void main() {
  Manager manager = Manager("John", 25000.0, "zzModify");
}
