// Constructor so tar class ta khu ko instantiate load lite tar net 
// -- a char method twe variable twe ko call sayar ma lo bal tan p a load load
// Constructor => default Constructor , Name Constructor , factory constructor

void main() {
  Student mama =
      Student(); // default constructor //
      // khu lo Student so p pyan khaw tar ko Instantiate load tar lo khaw
  Student mgmg = Student.study(); // name constructor
  Student tuntun = Student.play(); // name constructor

  Student choose = Student.choose(0);
  Student choose1 = Student.choose(1);
  Student chooseDefault = Student.choose(3);
}

class Student {
  String? name;
  int? age;
  String? address;

  Student() {
    // Default Constructor => no return
    print("This is Default Constructor and I am Working");
  }

  Student.study() {
    // Name Constructor
    print("This is Name Constructor and I am Studying");
  }

  Student.play() {
    // Name Constructor
    print("This is Name Constructor and I am Playing");
  }

  // Factory Constructor =>
  // - return pyan - class htel mar factory constructor ta khu ray yin 
  // class name net pat that tet data type ta khu khu ko return pyan pay
  // - name construtor lo bal ray but thu ka factory so tet keyword htae pay ya dl

  factory Student.choose(int std) {
    if (std == 0) {
      return Student.study();
    } else if (std == 1) {
      return Student.play();
    }
    return Student();
  }

  void study() {
    // method
    print("$name is Studying");
  }
}
