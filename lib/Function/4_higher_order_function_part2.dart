// --------- Function as a return type  Eg 1 ----------  //

void main() {
  //normal
  showSquare(5);
  // first class object
  var sq = showSquare;
  sq(5);
  // showSquareSecondWay
  var sqq = showSquareSecondWay;
  print(sqq.runtimeType);
  sqq(5)();
  //closure
  var cls = showSquareSecondWay;
  var clsSqq = cls(10);
  print(clsSqq);
  print("____");
  clsSqq();
  //or
  showSquareSecondWay(10)();
}

void showTriple({required int number, required Function(int) result}) {
  int triple = number * 3;
  result(triple);
}

void showResult(int result) => print("The result is $result");

void showSquare(int number) {
  int square = number * number;
  return showResult(square);
}

showSquareSecondWay(int number) {
  void square() =>
      print("The square is ${number * number}"); // function As a Return type
  return square;
}

// --------- Function as a return type  Eg 2 ----------  //

void mainFuncCanReturnAFunc() {
  Function myAdd = addTwoNumber();
  myAdd(22, 21);
}

addTwoNumber() {
  funcRetFuction(num1, num2) {
    print(num1 + num2);
  }

  return funcRetFuction;
}
