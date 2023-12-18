// -------- functional programming  ---------- //

// 1- First class object()
// 2- Lambda function / anonymous function

// 3- higher order function
//  - Function as a parameter & Function can return a function

// 4- Closure

// ---------  1- First class object()  --------------- //

// * function twe ko variable a nay net thone lo ya

void main() {
  var add = addNumber(3,4);
  var info = showInfo;
  print(info("ok"));
}

void addNumber(int num1, int num2) {
  print(num1 + num2);
}

String showInfo(String name) {
  return 'your name is $name';
}


