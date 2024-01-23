// Encapsulation
// capsule .. say daunk .. say ko bal thi pho lo say htel bar par lal thi pho ma lo
// access_modifier ka dart mar 2 khu bal shi dl => public and private ( _ ) underscore
// library // getter_settter
// open for extension // close for modificatin

import 'package:dart_rush_learning/Oop/number/13_encapsulation_num.dart';

void main() {
  // var no = Number()._num;// give error because of private
  // print(no);
  Number number = Number();
  // number.num = 0; // give error because of private
  number.triple(10);

  number.numb = 5;
  number.numb = 0; //close for modification
  number.triple2(10);
}

// -------------------------------------------- //

class Employee {
  int? _id;
  String? _name;

  int getId() {
    return _id!;
  }

  String getName() {
    return _name!;
  }

  void setId(int id) {
    this._id = id;
  }

  void setName(String name) {
    this._name = name;
  }
}

void main2() {
  Employee emp = Employee();
  emp._id = 1;
  emp._name = "John";

  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");
}

// ------------------------------------------ //

class Vehicle {
  String? _model;
  String? _year;

  String get model => _model ?? "";
  String get year => _year ?? "";

  set model(String model) => _model = model;
  set year(String year) => _year = year;
}

void main3() {
  var vehicle = Vehicle();
  vehicle._model = "GTR";
  vehicle._year = "2008";

  print(vehicle._model);
  print(vehicle._year);
}

// ---------------------------- //

class Person {
  // Properties
  String? firstName;
  String? lastName;

  // // Constructor
  Person(this.firstName, this.lastName);

  // Getter
  String get fullName => "$firstName $lastName";

  // Map Getter
  Map<String, dynamic> get map {
    return {"firstName": firstName, "lastName": lastName};
  }

  set setFirstName(String firstN) => this.firstName = firstN;
}

void main4() {
  Person p = Person("John", "Doe");
  print(p.fullName);
  p.setFirstName = "setName VarNyar";
}
