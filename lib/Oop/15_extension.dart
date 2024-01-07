// call thone htar tet pyin lo ma ya tet method twe ko pyin chin yin thone

void main(List<String> args) {
  int a = 4;
  a.wantToAddMethod(); // eg..
  // Or
  4.wantToAddMethod();
  2.wantToAddMethod();

  // ------------- //
  Student stud = Student();
  stud.showInfo(name: "New Method Extention Add on Class");
}

extension NumExtension on int {
  void wantToAddMethod() {
    if (this == 4) {
      print("New 4 Method Add is successful");
    } else if (this == 2) {
      print("New 2 Method Add is successful");
    }
  }
}

// ----------------------------- //

class Student {}

extension StudentExtension on Student {
  void showInfo({required String name}) {
    print("Name is $name");
  }
}
