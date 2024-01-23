// Constructor so tar class ta khu ko instantiate load lite tar net
// -- a char method twe variable twe ko call sayar ma lo bal tan p a load load
// Constructor => default Constructor , Name Constructor , factory constructor

void main() {
  Student mama = Student(); // default constructor //
  // khu lo Student so p pyan khaw tar ko Instantiate load tar lo khaw
  Student mgmg = Student.study(); // name constructor
  Student tuntun = Student.play(); // name constructor

  Student choose = Student.choose(0);
  Student choose1 = Student.choose(1);
  Student chooseDefault = Student.choose(3);
  Student chooseName = Student.chooseName(0);
}

class Student {
  String? name;
  int? age;
  String? address;

  Student() {
    // Default Constructor => no return
    print("This is Default Constructor and I am Working NameAlos");
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
  //  validation sit p return ta khu pyan chin tar myo so factory ko thone
  // - return pyan - class htel mar factory constructor ta khu ray yin
  // class name net pat that tet data type ta khu khu ko return pyan pay
  // - name construtor lo bal ray but thu ka factory so tet keyword htae pay ya dl
  // - Factory constructor must return an instance of the class or sub-class.
  // You can’t use this keyword inside factory constructor.
  // It can be named or unnamed and called like normal constructor.
  // It can’t access instance members of the class.
  // A named constructor can only generate the instance of the current class.
  // A factory constructor can decide which instance to return on runtime,
  // -- it can return either the instance of the current class or
  // any of the instances of its descendants class.

  factory Student.choose(int std) {
    if (std == 0) {
      return Student.study();
    } else if (std == 1) {
      return Student.play();
    }
    return Student();
  }

  Student.chooseName(int std) {
    if (std == 0) {
      Student.study();
    } else if (std == 1) {
      Student.play();
    }
    Student();
  }

  void study() {
    // method
    print("$name is Studying");
  }
}

// --------------------- // factory Construct

// class Person {
//   String firstName;
//   String lastName;

//   // constructor
//   Person(this.firstName, this.lastName);

//   // factory constructor Person.fromMap
//   factory Person.fromMap(Map<String, dynamic> map) {
//     final firstName = map['firstName'] as String;
//     final lastName = map['lastName'] as String;
//     return Person(firstName, lastName);
//   }
// }

// void mainFactory() {
//   // create a person object
//   final person = Person('John', 'Doe');

//   // create a person object from map
//   final person2 = Person.fromMap({'firstName': 'Harry', 'lastName': 'Potter'});

//   // print first and last name
//   print("From normal constructor: ${person.firstName} ${person.lastName}");
//   print("From factory constructor: ${person2.firstName} ${person2.lastName}");
// }

// // -------------------------- //

// class Studentt {
//   String? name;
//   int? age;
//   int? rollNumber;
//   // Constructor
//   Studentt([this.name, this.age, this.rollNumber]);

//   // Optional Parameter Constructor , [] thone
// }

// void mainn() {
//   // Here student is object of class Student.
//   Studentt student = Studentt("John", 20);
//   print("Name: ${student.name}");
//   print("Age: ${student.age}");
//   print("Roll Number: ${student.rollNumber}");
// }

// // -------------------------------------- //
// class LongShortConstructor {
//   String? name;
//   int? age;
//   int? rollNumber;

//   // // Long Term Constructor
//   // LongShortConstructor(String name, int age, int rollNumber) {
//   //   print(
//   //       "Constructor called"); // this is for checking the constructor is called or not.
//   //   this.name = name;
//   //   this.age = age;
//   //   this.rollNumber = rollNumber;
//   // }

//   // Short Term Constructor
//   LongShortConstructor(this.name, this.age, this.rollNumber);
// }

// void mainLongShort() {
//   // Here student is object of class Student.
//   LongShortConstructor student = LongShortConstructor("John", 20, 1);
//   print("Name: ${student.name}");
//   print("Age: ${student.age}");
//   print("Roll Number: ${student.rollNumber}");
// }

// // ------------------------  //

// class Area {
//   final int length;
//   final int breadth;
//   final int area;

//   // Initializer list
//   const Area(this.length, this.breadth) : area = length * breadth;
// }

// void mainInitializeer() {
//   Area area = Area(10, 20);
//   print("Area is: ${area.area}");

//   // notice that here is a negative value
//   Area area2 = Area(-10, 20);
//   print("Area is: ${area2.area}");
// }
