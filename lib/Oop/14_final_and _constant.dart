// final =  variable twe assign load tet a khar mar el variable twe ko bal htet p reassign ma load say chin yin thone ( runtime error)
// constant = compile time constant error ( error )

void main(List<String> args) {
  final int a = 4;
  // a = 5; //  this is call runtime error

  // final var s = "hello";     same with   =>   final s = "hello";

  final student = Student("");
  // const studentConst = Student(); // error

  Student.age;
  // static phit lo tan p khaw thone lo ya .. instantiation load sa yar ma lo
}

class Student {
  String name = "Mg Mg";

  final String name1;
  static const int age = 11; // const so static net twel thone ya dl
  Student(this.name1);

  // void showName(){  // can't change name because of final
  //   name1 = "ma ma";
  // }
}
