// Static Variable and Method
// instance variable so tar class ta khu instantiate load pe ma
// -- refrence variable a nay net call lo ya
// static variable so tar instantiate load sa yar ma lo bal call lo ya
// api yet endpoint a nay net thone lo ya
// static method ko kyike tet method mar call thone lo ya
// --but a char method ko tot static htel use lo ma ya

void main() {
  Student.sInfo = "Mg Mg"; // can call Direct No need Instantiate
  Student student1 = Student(); // instantiate
  // student1.sInfo = ""; can' call because of Static
  student1.name = "Mg Mg";
  student1.age = 25;
  student1.address = "Myanmar";
  student1.major = "Mynammar Major";
  student1.study();

  Student student2 = Student();
  student2.name = "ko ko"; // reference variable
  student2.age = 28;
  student2.address = "Singapore";
  student2.major = "English Major";
  student2.study();

  List<Student> students = [student1, student2];
  for (var value in students) {
    print(value);
    print(value.name);
  }

  for (var value in students) {
    value.study();
  }
  

  print(Student.sInfo); // Static
  Student.sInfo = "Change Static variable Info";
  print(Student.sInfo);

  Student.staticStudy();
}

class Student {
  static String sInfo = "Static Student"; // static variable
  String? name; // instance variable
  int? age;
  String? address;
  String? major;

  void study() {
    // method
    print("$name is Studying $major");
  }

  static void staticStudy() {
    print("$sInfo Static method ////");
  }

  @override
  String toString() {
    return "Student {name: $name,age: $age,address: $address,major: $major}";
  }
}
