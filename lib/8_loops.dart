// 8 - Dart Loops
// In Programming, loops are used to repeat a block of code until certain conditions are not completed. For, e.g., if you want to print your name 100 times, then rather than typing print(“your name”); 100 times, you can use a loop.
// There are different types of loop in Dart. They are:
// 	•	For Loop
// 	•	For Each Loop
// 	•	While Loop
// 	•	Do While Loop

// For Loop
// Syntax
// for(initialization; condition; increment/decrement){
//             statements;
// }

// 	•	Initialization is executed (one time) before the execution of the code block.
// 	•	Condition defines the condition for executing the code block.
// 	•	Increment/Decrement is executed (every time) after the code block has been executed.

// Eg: To Print 1 To 10 Using For Loop
void main() {
  forLoop();
  // infiniteLoop();
  forEachLoop();
  toFindIndexValueOfList();
  forInLoop();
  whileLoop();
  doWhileLoop();
  conditionIsFalseDoWhileLoop();
  breakInForloop();
  breakInWhileLoop();
  breakInSwitchCase();
  continueInForLoop();
  continueInWhileLoop();
}

void forLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Infinite Loop In Dart
void infiniteLoop() {
  for (int i = 1; i >= 1; i++) {
    print(i);
  }
}

// For Each Loop
// The for each loop iterates over all list elements or variables. It is useful when you want to loop through list/collection. The syntax of for-each loop is:
// collection.forEach(void f(value));

// Example1: Print Each Item Of List Using Foreach
void forEachLoop() {
  List<String> footballplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];
  footballplayers.forEach((names) => print(names));
  footballplayers.forEach((names) => names[0]); //only First Letter
}
// Ronaldo
// Messi
// Neymar
// Hazard
// R
// M
// N
// H

// How to Find Index Value Of List
// In dart, asMap method converts the list to a map where the keys are the index and values are the element at the index.
void toFindIndexValueOfList() {
  List<String> footballplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];
  footballplayers
      .asMap()
      .forEach((index, value) => print("$value index is $index"));
}
// Ronaldo index is 0
// Messi index is 1
// Neymar index is 2
// Hazard index is 3

// For In Loop In Dart
// There is also another for loop, i.e., for in loop. It also makes looping over the list very easily.
void forInLoop() {
  List<String> footballplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];
  for (String player in footballplayers) {
    print(player);
  }
}

// While Loop
// In while loop, the loop’s body will run until and unless the condition is true. You must write conditions first before statements. This loop checks conditions on every iteration. If the condition is true, the code inside {} is executed, if the condition is false, then the loop stops.
// Syntax
// while(condition){
//        //statement(s);
//       // Increment (++) or Decrement (--) Operation;
// }

// Eg:
void whileLoop() {
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }
}

// Do While Loop
// Do while loop is used to run a block of code multiple times. The loop’s body will be executed first, and then the condition is tested. The syntax of do while loop is:
// do{
//     statement1;
//     statement2;
//     .
//     .
//     .
//     statementN;
// }while(condition);

// Eg. To Print 1 To 10 Using Do While Loop

void doWhileLoop() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 10);
}

// When The Condition Is False
// Let’s make one condition false and see the demo below. Hello got printed if the condition is false.

void conditionIsFalseDoWhileLoop() {
  int number = 0;
  do {
    print("Hello");
    number--;
  } while (number > 1);
}

// Dart Break and Continue
// Break Statement
//    break;
// Example 1: Break In Dart For Loop

void breakInForloop() {
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
}

// Example 2: Break In Dart While Loop
void breakInWhileLoop() {
  int i = 1;
  while (i <= 10) {
    print(i);
    if (i == 5) {
      break;
    }
    i++;
  }
}

// Example 3: Break In Switch Case
void breakInSwitchCase() {
  var noOfMoneth = 5;
  switch (noOfMoneth) {
    case 1:
      print("Selected month is January.");
      break;
    case 2:
      print("Selected month is February.");
      break;
    case 3:
      print("Selected month is march.");
      break;
    case 4:
      print("Selected month is April.");
      break;
    case 5:
      print("Selected month is May.");
      break;
    case 6:
      print("Selected month is June.");
      break;
    case 7:
      print("Selected month is July.");
      break;
    case 8:
      print("Selected month is August.");
      break;
    case 9:
      print("Selected month is September.");
      break;
    case 10:
      print("Selected month is October.");
      break;
    case 11:
      print("Selected month is November.");
      break;
    case 12:
      print("Selected month is December.");
      break;
    default:
      print("Invalid month.");
      break;
  }
}

// Continue Statement
// continue;
// Example 1: Continue In Dart

void continueInForLoop() {
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}

// Example 2: Continue In Dart While Loop

void continueInWhileLoop() {
  int i = 1;
  while (i <= 10) {
    if (i == 5) {
      i++;
      continue;
    }
    print(i);
    i++;
  }
}
