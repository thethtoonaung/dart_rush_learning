// 9 - Try & Catch In Dart ( Exception )
// Eg
void main(){
  tryCatch();
  finallyTryCatch();
}
void tryCatch() {   
   int a = 18;   
   int b = 0;   
   int res;      
   try {    
      res = a ~/ b;   
   }    
    // It returns the built-in exception related to the occurring exception  
   catch(ex) {   
      print(ex);   
    }   
}  

// Finally In Dart Try Catch
// Syntax
// try {
// .....
// }
// on Exception1 {
// ....
// }
// catch Exception2 {
// ....
// }
// finally {
// // code that should always execute whether an exception or not.
// }

// Eg.
void finallyTryCatch() {
  int a = 12;
  int b = 0;
  int res;
  try {
    res = a ~/ b;
  } on UnsupportedError {
    print('Cannot divide by zero');
  } catch (ex) {
    print(ex);
  } finally {
    print('Finally block always executed');
  }
}
// Cannot divide by zero
// Finally block always executed
// Throwing An Exception
// Syntax
// throw new Exception_name() 

void tryCatch1() {
  try {
    check_account(-10);
  } catch (e) {
    print('The account cannot be negative');
  }
}

void check_account(int amount) {
  if (amount < 0) {
    throw new FormatException(); // Raising explanation externally
  }
}
// Why Is Exception Handling Needed?
// 	•	To avoid abnormal termination of the program.
// 	•	To avoid an exception caused by logical error.
// 	•	To avoid the program from falling apart when an exception occurs.
// 	•	To reduce the vulnerability of the program.
// 	•	To maintain a good user experience.
// 	•	To try providing aid and some debugging in case of an exception.

// How To Create Custom Exception In Dart
// class YourExceptionClass implements Exception{
//   // constructors, variables & methods
// }


// Example 1: How to Create & Handle Exception

// class MarkException implements Exception {
//   String errorMessage() {
//     return 'Marks cannot be negative value.';
//   }
// }

// void main() {
//   try {
//     checkMarks(-20);
//   } catch (ex) {
//     print(ex.toString());
//   }
// }

// void checkMarks(int marks) {
//   if (marks < 0) throw MarkException().errorMessage();
// }

// Example 2: How to Create & Handle Exception

// import 'dart:math';

// // custom exception class
// class NegativeSquareRootException implements Exception {
//   @override
//   String toString() {
//     return 'Sqauare root of negative number is not allowed here.';
//   }
// }

// // get square root of a positive number
// num squareRoot(int i) {
//   if (i < 0) {
//     // throw `NegativeSquareRootException` exception
//     throw NegativeSquareRootException();
//   } else {
//     return sqrt(i);
//   }
// }

// void main() {
//   try {
//     var result = squareRoot(-4);

//     print("result: $result");
//   } on NegativeSquareRootException catch (e) {
//     print("Oops, Negative Number: $e");
//   } catch (e) {
//     print(e);
//   } finally {
//     print('Job Completed!');
//   }
// }