// Class ko list tot Map tot Set tot htel htae thone

void main() {
  Student student1 = Student();
  student1.name = "Mg Mg";
  student1.age = 25;
  student1.address = "Myanmar";
  student1.major = "Mynammar Major";

  Student student2 = Student();
  student2.name = "ko ko"; // reference variable
  student2.age = 28;
  student2.address = "Singapore";
  student2.major = "English Major";

  List<Student> students = [student1, student2];
  for (var value in students) {
    print(value);
    print(value.name);
  }

  for (var value in students) {
    value.study();
  }
}

class Student {
  String? name; // instance variable
  int? age;
  String? address;
  String? major;

  void study() {
    // method
    print("$name is Studying $major");
  }

  @override
  String toString() {
    return "Student {name: $name,age: $age,address: $address,major: $major}";
  }
}
