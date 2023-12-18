// void Function
// Return Type Function

// Parameter Function
// 1- position parameter
// 2- optional parameter []
// 3- optional parameter with default value  []
// 4- name parameter (key : value) {}

// Fat Arrow key or short hand syntax

// Functional Programming
// 1- First class object()
// 2- Lambda function / anonymous function

// 3- higher order function 
//  - Function as a parameter & Function can return a function

// 4- Closure

import 'dart:core';

// void Function
void main() {
  addNumber([1, 2, 3]); // argument
  showName("PentaKill"); // argument
}

void addNumber(List<int> numberList) {
  //parameter
  int total = 0;
  for (var number in numberList) {
    total += number;
  }
  print("the result is $total");
}

void showName(String name) {
  // parameter
  print("your name is $name");
}

// ------------ Return Type Function ------------- //

void main1() {
  int i = 5;
  num a = triple(i);
  print("triple value of $i is $a");

  String showBiography = showBio("Mg Mg", 77);
  print(showBiography);

  String now = currentDate();
  print(now);
}

num triple(num myNum) {
  return myNum * 3;
}

// or
// num triple (num myNum) => myNum * 3 ;  // short-hand syntax fat arrow key

String showBio(String name, int age) {
  String completeBio = "Name is $name Age is $age";
  return completeBio;
}

String currentDate() {
  DateTime now = DateTime.now();
  return 'Day is ${now.day} Month is ${now.month} Year is ${now.year}';
}

// --------- Parameter Function ----------- //

// position parameter
// optional parameter []
// optional parameter with default value  []
// name parameter (key : value) {}

void main2() {
  showBio2( // position para & optional para & optional para with default value 
    "ma",
    2,
  );
  showBio3(name: "apk"); // name parameter
}

void showBio2(String name, int age,
    [String? optionalPara, String optionalParaWithDefaultValue = "default V"]) {
  print("name is $name");
  print("age is $age");
  print("optional paramter is $optionalPara");
  print("optional paramter is $optionalParaWithDefaultValue");
}

void showBio3(
    {String? name, int? age, String? optionalPara, String? nameParameter}) {
  print("name is $name");
  print("age is $age");
  print("optional paramter is $optionalPara");
  print("optional paramter is $nameParameter");
}

// ------- Fat Arrow key or short hand syntax  => ( for single expression ) ------ //

String normalFunction(String myName, int myAge) {
  return "My Name is $myName\n Age is $myAge";
}
// or

String fatArrowFunction(String myName, int myAge) =>
    "My Name is $myName\n Age is $myAge";


