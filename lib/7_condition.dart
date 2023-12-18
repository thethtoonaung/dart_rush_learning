// 7 - Conditions In Dart
// Types Of Condition
// 	•	Assert
// 	•	Ternary Operator
// 	•	If Condition
// 	•	If-Else Condition
// 	•	If-Else-If Condition
// 	•	Switch

// Assert
// While coding, it is hard to find errors in big projects, so dart provide a assert method to check for the error. It takes conditions as an argument. If the condition is true, nothing happens. If a condition is false, it will raise an error.
// Syntax

// assert(condition);
// // or
// assert(condition, "Your custom message");

// Eg1.no custom error message only original error message
void main() {
  var age = 22;
  // assert(age != 22);

  // assertt();
  ternaryOperator();
  ifCondition();
  ifElse();
}

// Eg 2. with custom message
void assertt() {
  var age = 22;
  assert(age != 22, "Age must be 22");
}

// // results =>
// Unhandled exception:
// 'file:///C:/Users/User/Desktop/New%20folder/dart_application_1/lib/dart_application_1.dart': Failed assertion: line 7 pos 11: 'age!=22': Age must be 22

// Ternary Operator
// The ternary operator is like if-else statement. This is a one-liner replacement for the if-else statement. It is used to write a conditional expression, where based on the result of a boolean condition, one of the two values is selected.
// Syntax:
// condition ? exprIfTrue : exprIfFalse

// Example Using Ternary Operator

void ternaryOperator() {
  int num1 = 10;
  int num2 = 15;
  int max = (num1 > num2) ? num1 : num2;
  print("The greatest number is $max");
}
// // results =>
// The greatest number is 15

// If Condition

void ifCondition() {
  var age = 20;

  if (age >= 18) {
    print("You are voter.");
  }
}

// If-Else Condition
// if(condition){
// statements;
// }else{
// Statements;
// }

// Example Using If Else
void ifElse() {
  int num1 = 10;
  int num2 = 15;
  int max = 0;
  if (num1 > num2) {
    max = num1;
  } else {
    max = num2;
  }
  print("The greatest number is $max");
}

// If-Else-If Condition
// When you have multiple if conditions, then you can use if-else-if. You can learn more in the example below. When you have more than two conditions, you can use if, else if, else in dart.
// Syntax
// if(condition1){
// statements1;
// }else if(condition2){
// statements2;
// }else if(condition3){
// statements3;
// }
// else(conditionN){
// statementsN;
// }

void ifElseIf() {
  int noOfMonth = 5;

  // Check the no of month
  if (noOfMonth == 1) {
    print("The month is jan");
  } else if (noOfMonth == 2) {
    print("The month is feb");
  } else if (noOfMonth == 3) {
    print("The month is march");
  } else if (noOfMonth == 4) {
    print("The month is april");
  } else if (noOfMonth == 5) {
    print("The month is may");
  } else if (noOfMonth == 6) {
    print("The month is june");
  } else if (noOfMonth == 7) {
    print("The month is july");
  } else if (noOfMonth == 8) {
    print("The month is aug");
  } else if (noOfMonth == 9) {
    print("The month is sep");
  } else if (noOfMonth == 10) {
    print("The month is oct");
  } else if (noOfMonth == 11) {
    print("The month is nov");
  } else if (noOfMonth == 12) {
    print("The month is dec");
  } else {
    print("Invalid option given.");
  }
}

// Switch Case In Dart
// dart switch case to control your program’s flow. A Switch case is used to execute the code block based on the condition.

// switch(expression) {
//     case value1:
//         // statements
//         break;
//     case value2:
//         // statements
//         break;
//     case value3:
//         // statements
//         break;
//     default:
//        // default statements
// }

// How does switch-case statement work in dart
// 	•	The expression is evaluated once and compared with each case value.
// 	•	If expression matches with case value1, the statements of case value1 are executed. Similarly, case value 2 will be executed if the expression matches case value2. If the expression matches the case value3, the statements of case value3 are executed.
// 	•	The break keywords tell dart to exit the switch statement because the statements in the case block are finished.
// 	•	If there is no match, default statements are executed.
// Note: You can use a Switch case as an alternative to the if-else-if condition.

// Example Using If Else If
void ifElseIff() {
  var dayOfWeek = 5;
  if (dayOfWeek == 1) {
    print("Day is Sunday.");
  } else if (dayOfWeek == 2) {
    print("Day is Monday.");
  } else if (dayOfWeek == 3) {
    print("Day is Tuesday.");
  } else if (dayOfWeek == 4) {
    print("Day is Wednesday.");
  } else if (dayOfWeek == 5) {
    print("Day is Thursday.");
  } else if (dayOfWeek == 6) {
    print("Day is Friday.");
  } else if (dayOfWeek == 7) {
    print("Day is Saturday.");
  } else {
    print("Invalid Weekday.");
  }
}

// Example Of Switch Statement
void switchCase() {
  var dayOfWeek = 5;
  switch (dayOfWeek) {
    case 1:
      print("Day is Sunday.");
      break;
    case 2:
      print("Day is Monday.");
      break;
    case 3:
      print("Day is Tuesday.");
      break;
    case 4:
      print("Day is Wednesday.");
      break;
    case 5:
      print("Day is Thursday.");
      break;
    case 6:
      print("Day is Friday.");
      break;
    case 7:
      print("Day is Saturday.");
      break;
    default:
      print("Invalid Weekday.");
      break;
  }
}
// Note: The syntax of switch statements is cleaner and much easier to read and write.

// Switch Case On Strings
void switchCaseOnString() {
  const weather = "cloudy";

  switch (weather) {
    case "sunny":
      print("Its a sunny day. Put sunscreen.");
      break;
    case "snowy":
      print("Get your skis.");
      break;
    case "cloudy":
      print("This is Cludy");
      break;
    case "rainy":
      print("Please bring umbrella.");
      break;
    default:
      print("Sorry I am not familiar with such weather.");
      break;
  }
}

// Switch Case On Enum
// // define enum outside main function
enum Weather{ sunny, snowy, cloudy, rainy}
// // main method
void switchCaseOnEnum() {
 const weather = Weather.cloudy;

  switch (weather) {
    case Weather.sunny:
        print("Its a sunny day. Put sunscreen.");
        break;
    case Weather.snowy:
        print("Get your skis.");
      break;
    case Weather.rainy:
    case Weather.cloudy:
      print("Please bring umbrella.");
      break;
    default:
        print("Sorry I am not familiar with such weather.");
      break;
  }
}
