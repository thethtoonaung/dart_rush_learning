// ------- Lamda Function ----------- //

void main() {
  info("info", 22);
  lamda1("info", 22);
  lamda2(22, 33);
}

info(String name, int age) {
  print(name);
  print(age);
}

var lamda1 = (String name, int age) {
  print(name);
  print(age);
};

var lamda2 = (int num1, int num2) => print(num1 + num2);

var square = (num) => num + num;
