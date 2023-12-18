// 11 - Function In Dart 
// Function Advantages
// 	•	Avoid Code Repetition
// 	•	Easy to divide the complex program into smaller parts
// 	•	Helps to write a clean code
// Syntax

// returntype functionName(parameter1,parameter2, ...){
//   // function body
// }

// Return type: It tells you the function output type. It can be void, String, int, double, etc. If the function doesn’t return anything, you can use void as the return type.
// Function Name: You can name functions by almost any name. Always follow a lowerCamelCase naming convention like void printName().
// Parameters: Parameters are the input to the function, which you can write inside the bracket (). Always follow a lowerCamelCase naming convention for your function parameter.
// Key Points
// 	•	In dart function are also objects.
// 	•	You should follow the lowerCamelCase naming convention while naming function.
// 	•	You should follow the lowerCamelCase naming convention while naming function parameters.

// Function Paramaters Vs Arguments
// // Here num1 and num2 are parameters
void main(){
// Here 10 and 20 are arguments
  add(10, 20); 
} 

void add(int num1, int num2){  
  int sum;
  sum = num1 + num2;
  print("The sum is $sum");
}

// Types Of Function
// Functions are the block of code that performs a specific task. Here are different types of functions:
// 	•	No Parameter And No Return Type
// 	•	Parameter And No Return Type
// 	•	No Parameter And Return Type
// 	•	Parameter And Return Type

// Example 1: No Parameter & No Return Type // void  = ex / no return

void noParaNoReturn() {
  printName();
}
void printName() {
  print("My name is John Doe.");
}

// Example 2: Parameter & No Return Type
void paraNoReturn() {
  printName1("John");
}
void printName1(String name) {
  print("Welcome, ${name}.");
}

// Example 3: No Parameter & Return Type
// Function With No Parameter & Return Type
void noParaReturnType() {
  String name = primeMinisterName();
  print("The Name from function is $name.");
}

String primeMinisterName() {
  return "John Doe";
}

// Example 4: Parameter & Return Type

// // this function add two numbers
int add1(int a, int b) {
  int sum = a + b;
  return sum;
}

void paraReturnType() {
  int num1 = 10;
  int num2 = 20;

  int total = add1(num1, num2);
  print("The sum is $total.");
}

// Complete Example

// // parameter and return type
int add2(int a, int b) {
  var total;
  total = a + b;
  return total;
}

// // parameter and no return type
// void mul(int a, int b) {
//   var total;
//   total = a * b;
//   print("Multiplication is : $total");
// }

// // no parameter and return type
// String greet() {
//   String greet = "Welcome";
//   return greet;
// }

// // no parameter and no return type
// void greetings() {
//   print("Hello World!!!");
// }

// void main() {
//   var total = add(2, 3);
//   print("Total sum: $total");
//   mul(2, 3);
//   var greeting = greet();
//   print("Greeting: $greeting");
//   greetings();
// }


// FUNCTION PARAMETER IN DART
// Parameter In Dart
// The parameter is the process of passing values to the function
// 	•	Positional Parameter In Dart
// 	•	Named Parameter In Dart
// 	•	Optional Parameter In Dart


// // here a and b are parameters
// void add(int a, int b) { 
// } 
// Positional Parameter In Dart
// In positional parameters, you must supply the arguments in the same order as you defined on parameters when you wrote the function. If you call the function with the parameter in the wrong order, you will get the wrong result.
// Example 1: Use Of Positional Parameter
// void printInfo(String name, String gender) {
//   print("Hello $name your gender is $gender.");
// }
// void main() {
//   // passing values in wrong order
//   printInfo("Male", "John");
//   // passing values in correct order
//   printInfo("John", "Male");
// }
// Example 2: Providing Default Value On Positional Parameter

// void printInfo(String name, String gender, [String title = "sir/ma'am"]) {
//   print("Hello $title $name your gender is $gender.");
// }
// void main() {
//   printInfo("John", "Male");
//   printInfo("John", "Male", "Mr.");
//   printInfo("Kavya", "Female", "Ms.");
// }
// Hello sir/ma'am John your gender is Male.
// Hello Mr. John your gender is Male.
// Hello Ms. Kavya your gender is Female.

// Named Parameter In Dart
// Dart allows you to use named parameters to clarify the parameter’s meaning in function calls. Curly braces {} are used to specify named parameters.
// Function mar parameter mar { } par yin argument mar parameter name pyan call p ray ya dl
// Example 1: Use Of Named Parameter

// void printInfo({String? name, String? gender}) {
//   print("Hello $name your gender is $gender.");
// }

// void main() {
//   // you can pass values in any order in named parameters.
//   printInfo(gender: "Male", name: "John");
//   printInfo(name: "Sita", gender: "Female");
//   printInfo(name: "Reecha", gender: "Female");
//   printInfo(name: "Reecha", gender: "Female");
//   printInfo(name: "Harry", gender: "Male");
//   printInfo(gender: "Male", name: "Santa");
// }
// Hello John your gender is Male.
// Hello Sita your gender is Female.
// Hello Reecha your gender is Female.
// Hello Reecha your gender is Female.
// Hello Harry your gender is Male.
// Hello Santa your gender is Male.
// Example 2: Use Of Required In Named Parameter    // require so value pay ko pay ya mal

// void printInfo({required String name, required String gender}) {
//   print("Hello $name your gender is $gender.");
// }

// void main() {
//   // you can pass values in any order in named parameters.
//   printInfo(gender: "Male", name: "John");
//   printInfo(gender: "Female", name: "Suju");
// }



// Optional Parameter In Dart
// Dart allows you to use optional parameters to make the parameter optional in function calls. Square braces [] are used to specify optional parameters.
// Function mar parameter ko optional pay chin yin [datatype? Parameter]
// Example: Use Of Optional Parameter

// void printInfo(String name, String gender, [String? title]) {
//   print("Hello $title $name your gender is $gender.");
// }

// void main() {
//   printInfo("John", "Male");
//   printInfo("John", "Male", "Mr.");
//   printInfo("Kavya", "Female", "Ms.");
// }
// Hello null John your gender is Male.
// Hello Mr. John your gender is Male.
// Hello Ms. Kavya your gender is Female.
// Anonymous Function In Dart
// This tutorial will teach you the anonymous function and how to use it. You already saw function like main(), add(), etc. These are the named functions, which means they have a certain name.
// But not every function needs a name. If you remove the return type and the function name, the function is called anonymous function.
// Syntax
// (parameterList){
// // statements
// }



// Example 1: Anonymous Function In Dart      
//  // Anomymous function so tar no return no parameter , function htel mar ray tar
// void main() {
//   const fruits = ["Apple", "Mango", "Banana", "Orange"];
//   fruits.forEach((fruit) {
//     print(fruit);
//   });
// }
// Example 2: Anonymous Function In Dart
// void main() {
// // Anonymous function
//   var cube = (int number) {
//     return number * number * number;
//   };
//   print("The cube of 2 is ${cube(2)}");
//   print("The cube of 3 is ${cube(3)}");
// }
// The cube of 2 is 8
// The cube of 3 is 27

// Arrow Function In Dart
// Dart has a special syntax for the function body, which is only one line. The arrow function is represented by => symbol. It is a shorthand syntax for any function that has only one expression.
// Syntax
// returnType functionName(parameters...) => expression;

// Note: The arrow function is used to make your code short.=> expr syntax is a shorthand for { return expr; }.
// Example 1: Simple Interest Without Arrow Function
// // function that calculate interest
// double calculateInterest(double principal, double rate, double time) {
//   double interest = principal * rate * time / 100;
//   return interest;
// }

// void main() {
//   double principal = 5000;
//   double time = 3;
//   double rate = 3;

//   double result = calculateInterest(principal, rate, time);
//   print("The simple interest is $result.");
// }

// Example 2: Simple Interest With Arrow Function
// // arrow function that calculate interest
// double calculateInterest(double principal, double rate, double time) =>
// principal * rate * time / 100;

// void main() {
//   double principal = 5000;
//   double time = 3;
//   double rate = 3;
//   double result = calculateInterest(principal, rate, time);
//   print("The simple interest is $result.");
// }
// Example 3: Simple Calculation Using Arrow Function
// int add(int n1, int n2) => n1 + n2;
// int sub(int n1, int n2) => n1 - n2;
// int mul(int n1, int n2) => n1 * n2;
// double div(int n1, int n2) => n1 / n2;

// void main() {
//   int num1 = 100;
//   int num2 = 30;

//   print("The sum is ${add(num1, num2)}");
//   print("The diff is ${sub(num1, num2)}");
//   print("The mul is ${mul(num1, num2)}");
//   print("The div is ${div(num1, num2)}");
// }
// Higher Order Function

// Lambada Function


// Closure