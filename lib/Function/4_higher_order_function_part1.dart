// Higher Order Function
//  - Function as a parameter & Function as a return type

// ------------------ Function as a parameter Eg 1 -------------- //



void main() {
  showTriple(number: 5, result: showResult);
  //or
  showTriple(number: 5, result: (triple) => print("The result is $triple"));
  //or use lambda
  showTriple(number: 5, result: (int result) => print("The result is $result"));
}

void showTriple({required int number, required Function(int) result}) {
  int triple = number * 3;
  result(triple);
}

void showResult(int result) => print("The result is $result");

// ----------------------- Function as a parameter Eg 2 -----------------  //

void mainFunctionAsAPara() {
  myInfo() => print("22 and myanmar");
  showInfo3("MG MG", myInfo);
}

showInfo3(String name, Function paraFunctInfo) {
  print(name);
  print(paraFunctInfo);
}

//  (Or )

void mainFunctionAsAPara2() {
  myInfo(int age, info) => print("age is $age and info is $info");
  showInfo("ya", myInfo);
}

showInfo(String name, Function paraFunctInfo) {
  print(name);
  paraFunctInfo(22, "Myanmar");
}

// ------------------------------------------------------ //

