// late // lazy initialization
// late so nout ma khaw chin yin thone

void main() {
  late Person person = Person();
  print("state1");
  print("state2");
  person.showName();
}

class Person {
  late String name;

  Person() {
    print("Constructor");
    this.name = "Mg Mg";
  }

  void showName() => print(name);
}
