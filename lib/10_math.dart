// 10 - Math In Dart
// Math helps you to perform mathematical calculations efficiently. With dart math, you can generate random number, find square root, find power of number, or round specific numbers. To use math in dart, you must import 'dart:math';.
// How To Generate Random Numbers In Dart
// import 'dart:math';
// void main()
// {
// random = new Random();
// int randomNumber = random.nextInt(10); // from 0 to 9 included
// print("Generated Random Number Between 0 to 9: $randomNumber");
  
// int randomNumber2 = random.nextInt(10)+1; // from 1 to 10 included  
// print("Generated Random Number Between 1 to 10: $randomNumber2"); 
// }

// Generate Random Number Between Any Number
// Use this formula to generate a random number between any numbers in the dart.
//  min + Random().nextInt((max + 1) - min);

// ​​Example: Random Number In Dart Between 10 - 20.

// import 'dart:math';
// void main()
// {

// int min = 10;
// int max = 20; 

// int randomnum = min + Random().nextInt((max + 1) - min);
  
// print("Generated Random number between $min and $max is: $randomnum");  
// }
// Random Boolean And Double Value
// Here you will learn how to generate random boolean and double values in dart.
//   Random().nextBool(); // return true or false
//   Random().nextDouble(); // return 0.0 to 1.0
// Example 1: Generate Random Boolean And Double Values

// import 'dart:math';
// void main()
// {
// double randomDouble = Random().nextDouble();
// bool randomBool = Random().nextBool();
  
// print("Generated Random double value is: $randomDouble");  
// print("Generated Random bool value is: $randomBool");  
// }

// Example 2: Generate a List Of Random Numbers In Dart
// This example will generate a list of 10 random numbers between 1 to 100.
// import 'dart:math';
// void main()
// {
// List<int> randomList = List.generate(10, (_) => Random().nextInt(100)+1); 
// print(randomList);  
// }

// Useful Math Function In Dart
// You can use some useful math functions to perform your daily task with dart programming.
// Function Name
// Output
// Description
// pow(10,2)
// 100
// 10 to the power 2 is 10*10
// max(10,2)
// 10
// Maximum number is 10
// min(10,2)
// 2
// Minimum number is 2
// sqrt(25)
// 5
// Square root of 25 is 5


// Example: Math In Dart
// import 'dart:math';
// void main()
// {
//   int num1 = 10;
//   int num2 = 2;

//   num powernum = pow(num1,num2);
//   num maxnum = max(num1,num2);
//   num minnum = min(num1,num2);
//   num squareroot = sqrt(25); // Square root of 25
  
//   print("Power is $powernum"); 
//   print("Maximum is $maxnum"); 
//   print("Minimum is $minnum"); 
//   print("Square root is $squareroot"); 
  
// }