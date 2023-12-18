import 'dart:io'; // package // user input in dart

void main() {
  methodScope();
  globalScope();
  staticallyTyped();
  dynamicallyTyped();
}
// Statements -  with a semicolon ;
// Expressions -  5, 5=5, “hello”
// Keywords -   int, if, var, String, const, etc.
// Identifiers -   int age = 19;
// Special Character in string -  \n \t

// *** Variables and Data Types ***

//   Variables - var & dynamic
//   Var -  underscore and dollar sign let
//   Constant Variable - const pi = 3.14
//   lowerCamelCase - num1, fullName, isMarried,

// ------------------------------------------//

// *** Data Type ***

//  • Number - 1
//  • Strings - "Mg Mg"
//  • Booleans - true or false
//  • Lists - [1,2,3]; , [‘one’,’two’,’three’];
//  • Maps - { ‘name’ : ‘Mg Mg’ , ‘gender’ : ‘Male’ };
//  • Runes - big s key , just like string

// Example 1: Method Scope
void methodScope() {
  String text = "I am text inside main. Anyone can't access me.";
  print(text);
}

// Global Scope
// You can define a variable in the global scope to use the variable anywhere in your program.
String global = "I am Global. Anyone can access me.";
void globalScope() {
  print(global);
}

// Lexical Scope braces {}

// Statically Typed
void staticallyTyped() {
  var myVariable = 50; // You can also use int instead of var
  //  myVariable = "Hello"; // this will give error
  print(myVariable);
}

// Dynamically Typed
void dynamicallyTyped() {
  dynamic myVariable = 50;
  myVariable = "Hello"; // no error
  print(myVariable);
}
